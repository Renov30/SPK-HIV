@extends('front.layouts.app')
@section('title', 'Hasil Diagnosa')
@section('content')
<x-nav />

<section class="pt-36 pb-25 mb-50">
    <div class="container">
        <div class="w-full px-4">
            <h2 class="text-base font-medium text-primary py-3 lg:text-lg">Sistem Pakar Diagnosa HIV/AIDS | Hasil Diagnosa</h2>
            <div class="bg-primary px-10 py-10 rounded-lg text-white">
                <h3 class="text-2xl font-bold mb-5">Persentase Penyakit:</h3>
                <ul class="mb-5">
                    @foreach ($persentase as $nama => $value)
                        <li>{{ ucfirst($nama) }}: {{ $value }}%</li>
                    @endforeach
                </ul>

                <h3 class="text-2xl font-bold mb-5">Solusi:</h3>
                @forelse ($solusi as $s)
                    <p class="mb-2">- {{ $s }}</p>
                @empty
                    <p>Solusi tidak ditemukan.</p>
                @endforelse

                <div class="mt-8">
                    <a href="{{ route('front.ulang') }}" class="btn btn-light bg-white text-gray-800 px-4 py-2 rounded hover:text-dark hover:shadow-lg duration-300 ease-in-out">Cek Ulang</a>
                </div>
            </div>
        </div>
    </div>
</section>

<x-footer />
@endsection
