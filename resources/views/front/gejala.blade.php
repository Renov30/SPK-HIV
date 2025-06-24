@extends('front.layouts.app')
@section('title', 'Gejala')
@section('content')
<x-nav />

    {{-- pertanyaan start --}}
    <section class="pt-36 pb-25 mb-50">
        <div class="container">
            <div class="w-full px-4">
                <h2 class="text-base font-medium text-primary py-3 lg:text-lg">Sistem Pakar Diagnosa HIV/AIDS | Pilih Gejala</h2>
                <div class="bg-primary px-15 py-15 mr-5 rounded-lg grid grid-cols-2">
                    <div class="flex flex-col justify-center">
                            <h2 class="mb-4 font-bold text-white lg:text-2xl">Pertanyaan :</h2>
                            <form action="{{ route('front.gejala') }}" method="POST">
                                @csrf

                                {{-- Jika belum ada session nama, tampilkan form data diri --}}
                                @if (!Session::has('nama'))
                                    <div class="bg-white p-4 rounded-lg shadow">
                                        <h3 class="text-xl font-semibold mb-4 text-gray-700">Data Diri Anda</h3>
                                        <div class="mb-4">
                                            <label for="nama" class="block text-sm font-medium text-gray-700">Nama</label>
                                            <input type="text" name="nama" id="nama" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm">
                                        </div>
                                        <div class="mb-4">
                                            <label for="usia" class="block text-sm font-medium text-gray-700">Usia</label>
                                            <input type="number" name="usia" id="usia" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm">
                                        </div>
                                        <div class="mb-4">
                                            <label for="jenis_kelamin" class="block text-sm font-medium text-gray-700">Jenis Kelamin</label>
                                            <select name="jenis_kelamin" id="jenis_kelamin" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm">
                                                <option value="">-- Pilih --</option>
                                                <option value="Laki-laki">Laki-laki</option>
                                                <option value="Perempuan">Perempuan</option>
                                            </select>
                                        </div>
                                        <button type="submit" class="bg-primary text-white px-4 py-2 rounded hover:shadow-lg hover:opacity-90 transition duration-300 ease-in-out cursor-pointer">
                                            Lanjut
                                        </button>
                                    </div>
                                    <p class="text-xs text-white py-3 italic lg:text-xs">* isi data diri anda</p>
                                @else
                                    {{-- Pertanyaan Gejala --}}
                                    <p class="mb-4 text-white lg:text-2xl">
                                        Apakah anda mengalami {{ $gejala }} ?
                                    </p>
                                    <div class="flex mb-4">
                                        <button type="submit" name="jawaban" value="ya"
                                            class="font-medium text-dark bg-white px-3 py-2 w-20 rounded-lg hover:shadow-lg hover:opacity-90 transition duration-300 ease-in-out cursor-pointer">Ya</button>
                                        <button type="submit" name="jawaban" value="tidak"
                                            class="font-medium text-dark bg-white ml-3 px-3 py-2 w-20 rounded-lg hover:shadow-lg hover:opacity-90 transition duration-300 ease-in-out cursor-pointer">Tidak</button>
                                        <button type="submit" name="jawaban" value="ulang"
                                            class="font-medium text-dark bg-white ml-3 px-3 py-2 w-20 rounded-lg hover:shadow-lg hover:opacity-90 transition duration-300 ease-in-out cursor-pointer">Ulang</button>
                                    </div>
                                    <p class="text-xs text-white py-3 italic lg:text-xs">* pilih gejala berdasarkan kondisi yang anda rasakan</p>
                                @endif
                            </form>
                    </div>
                        <div class="w-full relative ml-5">
                            <img src="{{ asset('img/jawab.png') }}" alt="" class=" max-w-full px-10 mx-auto">
                        </div>
                </div>
            </div>
        </div>
    </section>
    {{-- pertanyaan end --}}
    
<x-footer />
@endsection