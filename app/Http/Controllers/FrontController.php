<?php

namespace App\Http\Controllers;

use App\Models\Galeri;
use App\Models\Lahan;
use Illuminate\Http\Request;

class FrontController extends Controller
{
    public function index()
    {
        return view('front.index');
    }

    public function data()
    {
        $semua = Lahan::paginate(8);
        // $semua = Lahan::all();
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
