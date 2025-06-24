<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class FrontController extends Controller
{
    public function index()
    {
        return view('front.index');
    }

    /**
     * Menampilkan pertanyaan gejala & memproses jawaban.
     */
    public function gejala(Request $request)
    {
        // ----- inisialisasi -----
        $idPenyakit = 1;                       // sementara hard-code
        $idGejala   = Session::get('gejala_id');   // step sekarang
        $persen     = Session::get('persentase', []);

        // Pertama kali kunjung → ambil gejala pertama penyakit tsb
        if ($idGejala === null) {
            $idGejala = DB::table('relasis')
                ->where('penyakit_id', $idPenyakit)
                ->orderBy('gejala_id')
                ->value('gejala_id');
            Session::put('gejala_id', $idGejala);
        }

        // ----- jika form disubmit -----
        if ($request->isMethod('post')) {
            $jawab = $request->input('jawaban');        // "ya" | "tidak"

            if ($jawab === 'ulang') {
                Session::flush(); // hapus semua data session
                return redirect()->route('front.gejala'); // kembali ke awal pertanyaan
            }

            if ($jawab === 'ya') {
                $persen[] = $idGejala;                  // simpan gejala ter-pilih
            }

            Session::put('persentase', $persen);
            Session::put('gejala_id', $idGejala + 1);   // ke gejala berikutnya

            return redirect()->route('front.gejala');   // PRG pattern
        }

        // ----- selesai 27 gejala -----
        if ($idGejala > 27) {
            $kelompok = [
                'ginjalAkut'   => [1, 2, 3, 4, 5, 6],
                'ginjalKronis' => [7, 8, 9, 10, 11, 12],
                'batuGinjal'   => [13, 14, 15, 16, 17],
                'infeksiGinjal' => [18, 19],
                'kankerGinjal' => [20, 21, 22],
                'gagalGinjal'  => [23, 24, 25, 26, 27],
            ];

            foreach ($kelompok as $key => $list) {
                $terpilih = count(array_intersect($persen, $list));
                $hasil    = number_format($terpilih / count($list), 3) * 100;
                Session::put($key, $hasil);
            }

            return redirect()->route('front.hasil');    // siapkan view hasil
        }

        // ----- ambil teks gejala sekarang -----
        $gejala = DB::table('gejalas')
            ->where('id', $idGejala)
            ->value('nama_gejala') ?? 'Gejala tidak ditemukan';

        return view('front.gejala', compact('gejala'));
    }

    public function hasil()
    {
        $ginjalAkut    = Session::get('ginjalAkut', 0);
        $ginjalKronis  = Session::get('ginjalKronis', 0);
        $batuGinjal    = Session::get('batuGinjal', 0);
        $infeksiGinjal = Session::get('infeksiGinjal', 0);
        $kankerGinjal  = Session::get('kankerGinjal', 0);
        $gagalGinjal   = Session::get('gagalGinjal', 0);

        // Fungsi untuk menentukan penyakit dominan
        $values = [
            $ginjalAkut,
            $ginjalKronis,
            $batuGinjal,
            $infeksiGinjal,
            $kankerGinjal,
            $gagalGinjal
        ];

        $penyakit_id = array_keys($values, max($values))[0] + 1;

        // Ambil solusi dari DB
        $solusi = DB::table('solusis')->where('penyakit_id', $penyakit_id)->pluck('solusi');

        return view('front.hasil', compact(
            'ginjalAkut',
            'ginjalKronis',
            'batuGinjal',
            'infeksiGinjal',
            'kankerGinjal',
            'gagalGinjal',
            'solusi'
        ));
    }

    public function ulang()
    {
        Session::flush(); // hapus semua data session
        return redirect()->route('front.gejala'); // arahkan ke halaman awal cek
    }
}
