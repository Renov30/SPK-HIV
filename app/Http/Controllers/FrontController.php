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

        if ($idGejala > 27) {
            $penyakits = DB::table('penyakits')->get();

            foreach ($penyakits as $penyakit) {
                // Ambil daftar gejala yang terkait dengan penyakit ini
                $gejala_ids = DB::table('relasis')
                    ->where('penyakit_id', $penyakit->id)
                    ->pluck('gejala_id')
                    ->toArray();

                if (count($gejala_ids) > 0) {
                    $terpilih = count(array_intersect($persen, $gejala_ids));
                    $hasil = number_format($terpilih / count($gejala_ids), 3) * 100;
                } else {
                    $hasil = 0; // kalau tidak ada gejala terdaftar untuk penyakit ini
                }

                // Simpan dalam session dengan nama penyakit sebagai key
                Session::put($penyakit->nama_penyakit, $hasil);
            }

            return redirect()->route('front.hasil');
        }


        // ----- ambil teks gejala sekarang -----
        $gejala = DB::table('gejalas')
            ->where('id', $idGejala)
            ->value('nama_gejala') ?? 'Gejala tidak ditemukan';

        return view('front.gejala', compact('gejala'));
    }

    public function hasil()
    {
        $penyakits = DB::table('penyakits')->get();
        $persentase = [];

        foreach ($penyakits as $penyakit) {
            $persentase[$penyakit->nama_penyakit] = Session::get($penyakit->nama_penyakit, 0);
        }

        // Cari penyakit dominan
        $maxVal = max($persentase);
        $penyakitDominan = array_search($maxVal, $persentase);

        // Ambil solusi dari DB berdasarkan penyakit dominan
        $penyakit_id = DB::table('penyakits')
            ->where('nama_penyakit', $penyakitDominan)
            ->value('id');

        $solusi = DB::table('solusis')
            ->where('penyakit_id', $penyakit_id)
            ->pluck('solusi');

        return view('front.hasil', [
            'persentase' => $persentase,
            'solusi' => $solusi,
        ]);
    }


    public function ulang()
    {
        Session::flush(); // hapus semua data session
        return redirect()->route('front.gejala'); // arahkan ke halaman awal cek
    }
}
