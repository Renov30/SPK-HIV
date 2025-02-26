<?php

namespace App\Http\Controllers;

use App\Models\Distrik;
use App\Models\Galeri;
use App\Models\Lahan;
use Illuminate\Http\Request;

class FrontController extends Controller
{
    public function index()
    {
        $jumlahLuas = Lahan::sum('luas_lahan');
        $jumlahProduksi = Lahan::sum('hasil_produksi');
        $jumlahDistrik = Distrik::count();
        $jumlahLahan = Lahan::count();
        return view('front.index', compact('jumlahLuas', 'jumlahProduksi', 'jumlahDistrik', 'jumlahLahan'));
    }

    public function data(Request $request)
    {
        $query = Lahan::query();

        if ($request->has('search')) {
            $search = $request->input('search');
            $query->where('name', 'LIKE', "%{$search}%")
                ->orWhere('nama_petani', 'LIKE', "%{$search}%")
                ->orWhereHas('distrik', function ($q) use ($search) {
                    $q->where('name', 'LIKE', "%{$search}%");
                })
                ->orWhere('alamat', 'LIKE', "%{$search}%");
        }

        $semua = $query->paginate(8);

        return view('front.data', compact('semua'));
    }

    public function detail(Lahan $lahan)
    {
        $lahan->load(['distrik', 'galeri']);
        $semua = Lahan::where('id', '!=', $lahan->id)->get();
        return view('front.detail', compact('lahan', 'semua'));
    }

    public function peta()
    {
        $lahans = Lahan::select('id', 'name', 'slug', 'alamat', 'longitude', 'latitude')->get();
        return view('front.peta', compact('lahans'));
    }
}
