<?php

namespace App\Http\Controllers;

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
        $semua = Lahan::all();

        return view('front.data', compact('semua'));
    }

    public function detail(Lahan $lahan)
    {
        $lahan->load(['distrik']);
        return view('front.detail', compact('lahan'));
    }

    public function peta()
    {
        return view('front.peta');
    }
}
