<?php

namespace App\Http\Controllers;

use App\Models\HasilDiagnosa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Arr;
use Barryvdh\DomPDF\Facade\Pdf;

class FrontController extends Controller
{
    public function index()
    {
        return view('front.index');
    }

    public function about()
    {
        return view('front.about');
    }

    /**
     * Menampilkan pertanyaan gejala & memproses jawaban.
     */
    public function gejala(Request $request)
    {
        $idPenyakit = 1;
        $idGejala   = Session::get('gejala_id');
        $persen     = Session::get('persentase', []);

        // Jika belum ada data diri, simpan dulu ke session dan kembali tampilkan view
        if (!Session::has('nama') && $request->isMethod('post')) {
            Session::put('nama', $request->input('nama'));
            Session::put('usia', $request->input('usia'));
            Session::put('jenis_kelamin', $request->input('jenis_kelamin'));

            // Ambil gejala pertama untuk mulai pertanyaan setelah submit
            $idGejala = DB::table('relasis')
                ->where('penyakit_id', $idPenyakit)
                ->orderBy('gejala_id')
                ->value('gejala_id');

            Session::put('gejala_id', $idGejala);

            return redirect()->route('front.gejala');
        }

        // Jika semua sudah siap, mulai logika pertanyaan gejala
        if ($request->isMethod('post')) {
            $jawab = $request->input('jawaban');

            if ($jawab === 'ulang') {
                Session::flush();
                return redirect()->route('front.gejala');
            }

            if ($jawab === 'ya') {
                $persen[] = $idGejala;
            }

            Session::put('persentase', $persen);
            Session::put('gejala_id', $idGejala + 1);

            return redirect()->route('front.gejala');
        }

        // Setelah semua gejala selesai
        $maxGejalaId = DB::table('gejalas')->max('id');
        if ($idGejala > $maxGejalaId) {
            $penyakits = DB::table('penyakits')->get();
            $hasilDiagnosa = [];

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
                $hasilDiagnosa[$penyakit->nama_penyakit] = $hasil;
            }
            // Simpan hasil terbesar ke DB
            $penyakitTerbesar = Arr::sortDesc($hasilDiagnosa);
            $namaPenyakit = array_key_first($penyakitTerbesar);
            $persentaseTertinggi = $penyakitTerbesar[$namaPenyakit];

            // Simpan ke DB
            DB::table('hasil_diagnosas')->insert([
                'nama' => Session::get('nama'),
                'usia' => Session::get('usia'),
                'jenis_kelamin' => Session::get('jenis_kelamin'),
                'penyakit' => $namaPenyakit,
                'persentase' => $persentaseTertinggi,
                'persentase_all' => json_encode($hasilDiagnosa),
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            return redirect()->route('front.hasil');
        }

        // Jika sudah mulai pertanyaan, ambil gejala sekarang
        $gejala = null;
        if (Session::has('gejala_id')) {
            $gejala = DB::table('gejalas')
                ->where('id', Session::get('gejala_id'))
                ->value('nama_gejala') ?? 'Gejala tidak ditemukan';
        }

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
            'penyakitDominan' => $penyakitDominan,
            'nilaiDominan' => $maxVal,
        ]);
    }


    public function ulang()
    {
        Session::flush(); // hapus semua data session
        return redirect()->route('front.gejala'); // arahkan ke halaman awal cek
    }

    public function kembali()
    {
        Session::flush(); // hapus semua data session
        return redirect()->route('front.index');
    }

    public function diri()
    {
        return view('front.diri');
    }

    public function hasilPdf()
    {
        $penyakits = DB::table('penyakits')->get();
        $persentase = [];

        foreach ($penyakits as $penyakit) {
            $persentase[$penyakit->nama_penyakit] = Session::get($penyakit->nama_penyakit, 0);
        }

        $maxVal = max($persentase);
        $penyakitDominan = array_search($maxVal, $persentase);

        $penyakit_id = DB::table('penyakits')
            ->where('nama_penyakit', $penyakitDominan)
            ->value('id');

        $solusi = DB::table('solusis')
            ->where('penyakit_id', $penyakit_id)
            ->pluck('solusi');

        $pdf = Pdf::loadView('front.hasil_pdf', [
            'persentase' => $persentase,
            'solusi' => $solusi,
            'penyakitDominan' => $penyakitDominan,
            'nilaiDominan' => $maxVal,
            'nama' => Session::get('nama'),
            'usia' => Session::get('usia'),
            'jenis_kelamin' => Session::get('jenis_kelamin'),
        ]);

        $namaPasien = preg_replace('/[^a-zA-Z0-9_-]/', '_', Session::get('nama'));
        return $pdf->download('hasil_diagnosa_' . $namaPasien . '.pdf');
    }

    public function hasilPdfResource($id)
    {
        $data = HasilDiagnosa::findOrFail($id);

        $persentase = json_decode($data->persentase_all ?? '{}', true);

        // Ambil solusi dari penyakit terkait
        $penyakit_id = DB::table('penyakits')
            ->where('nama_penyakit', $data->penyakit)
            ->value('id');

        $solusi = DB::table('solusis')
            ->where('penyakit_id', $penyakit_id)
            ->pluck('solusi');

        $pdf = Pdf::loadView('front.hasil_pdf_resource', [
            'data' => $data,
            'persentase' => $persentase,
            'solusi' => $solusi,
        ]);

        return $pdf->download('hasil_diagnosa_' . $data->nama . '.pdf');
    }
}
