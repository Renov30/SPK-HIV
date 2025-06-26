@extends('front.layouts.app')
@section('title', 'Hasil Diagnosa')
@section('content')
<x-nav />

<section class="pt-36 pb-25 mb-50">
    <div class="container">
        <div class="w-full px-4">
            <h2 class="text-base font-medium text-primary py-3 lg:text-lg">Sistem Pakar Diagnosa HIV/AIDS | Hasil Diagnosa</h2>
            <div class="bg-primary px-10 py-10 rounded-lg text-white mb-10">
                <div class="mb-6 py-4 px-6 bg-white rounded shadow text-secondary">
                    <h3 class="text-xl font-semibold mb-2">Informasi Data Diri</h3>
                    <p><strong>Nama:</strong> {{ Session::get('nama') }}</p>
                    <p><strong>Usia:</strong> {{ Session::get('usia') }} tahun</p>
                    <p><strong>Jenis Kelamin:</strong> {{ Session::get('jenis_kelamin') }}</p>
                </div>
                <h3 class="text-2xl font-bold mb-5">Hasil Diagnosa:</h3>
                <p class="text-xl font-semibold">
                    Berdasarkan gejala yang dimasukkan, anda kemungkinan mengidap: 
                    <strong class="font-bold">{{ ucfirst($penyakitDominan) }}</strong>
                </p>
                 <p class="text-xl font-semibold">
                    Dengan tingkat kepastian sebesar: 
                    <strong class="font-bold">{{ number_format($nilaiDominan, 1) }}%</strong>
                </p>
                {{-- <h3 class="text-2xl font-bold mb-5">Persentase Penyakit:</h3> --}}
                <h3 class="text-base mt-5">Berikut adalah persentase penyakit berdasarkan gejala yang anda berikan: </h3>
                <ul class="mb-5">
                    @foreach ($persentase as $nama => $value)
                        <li>- {{ ucfirst($nama) }}: {{ $value }}%</li>
                    @endforeach
                </ul>

                <h3 class="text-2xl font-bold mb-5">Solusi:</h3>
                @forelse ($solusi as $s)
                    <p class="mb-2">- {{ $s }}</p>
                @empty
                    <p>Solusi tidak ditemukan.</p>
                @endforelse

                <div class="mt-8">
                    <a href="{{ route('front.ulang') }}" class="btn btn-light bg-white font-medium text-dark px-4 py-2 rounded hover:shadow-lg hover:opacity-90 duration-300 ease-in-out">Ulangi</a>
                    <a href="{{ route('front.hasil.pdf') }}" class="btn btn-light bg-white font-medium ml-2 text-dark px-4 py-2 rounded hover:shadow-lg hover:opacity-90 duration-300 ease-in-out">Cetak</a>
                    <a href="{{ route('front.kembali') }}" class="btn btn-light bg-white font-medium ml-2 text-dark px-4 py-2 rounded hover:shadow-lg hover:opacity-90 duration-300 ease-in-out">Selesai</a>
                </div>
            </div>
            <div class="px-10 py-10 shadow-xl rounded-lg text-secondary">
                <h4 class="text-2xl font-bold mb-5">
                    Penjelasan mengenai <strong class="font-bold">{{ ucfirst($penyakitDominan) }}</strong>
                </h4>
                @forelse ($keteranganList as $k)
                    <div class="flex items-start mb-2">
                        <i data-feather="check-circle" class="w-5 h-5 flex-shrink-0 mt-1 mr-3 text-green-500"></i>
                        <p>{{ $k }}</p>
                    </div>
                @empty
                    <p>Keterangan tidak ditemukan.</p>
                @endforelse
            </div>
        </div>
    </div>
</section>

<x-footer />
@endsection
