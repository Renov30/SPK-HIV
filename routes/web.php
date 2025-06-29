<?php

use App\Http\Controllers\DataController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [FrontController::class, 'index'])->name('front.index');
Route::get('/about', [FrontController::class, 'about'])->name('front.about');
Route::match(['get', 'post'], '/gejala', [FrontController::class, 'gejala'])
    ->name('front.gejala');
// web.php
Route::get('/hasil', [FrontController::class, 'hasil'])->name('front.hasil');
Route::get('/ulang', [FrontController::class, 'ulang'])->name('front.ulang');
Route::get('/kembali', [FrontController::class, 'kembali'])->name('front.kembali');
Route::get('/diri', [FrontController::class, 'diri'])->name('front.diri');
Route::get('/hasil-pdf', [FrontController::class, 'hasilPdf'])->name('front.hasil.pdf');
Route::get('/hasil-pdf-resource/{id}', [FrontController::class, 'hasilPdfResource'])->name('front.hasilresource.pdf');

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
