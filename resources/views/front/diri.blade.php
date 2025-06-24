@extends('front.layouts.app')
@section('title', 'Gejala')
@section('content')
<x-nav />

    {{-- pertanyaan start --}}
    <section class="pt-36 pb-25 mb-50">
        <div class="container">
            <div class="w-full px-4">
                <h2 class="text-base font-medium text-primary py-3 lg:text-lg">Sistem Pakar Diagnosa HIV/AIDS | Input Data Diri</h2>
                <div class="bg-primary px-15 py-15 mr-5 rounded-lg grid grid-cols-2">
                    <div class="flex flex-col justify-center">
                            <h2 class="mb-4 font-bold text-white lg:text-2xl">Input data diri :</h2>
                            <form action="{{ route('front.diri') }}" method="POST">
                                @csrf

                                {{-- Nama --}}
                                <div class="mb-4">
                                    <label for="nama" class="block text-white text-sm font-bold mb-2">Nama Lengkap</label>
                                    <input type="text" name="nama" id="nama" required
                                        class="w-full px-4 py-2 rounded-lg text-gray-800 focus:outline-none focus:ring-2 focus:ring-white">
                                </div>

                                {{-- Usia --}}
                                <div class="mb-4">
                                    <label for="usia" class="block text-white text-sm font-bold mb-2">Usia</label>
                                    <input type="number" name="usia" id="usia" required min="0"
                                        class="w-full px-4 py-2 rounded-lg text-gray-800 focus:outline-none focus:ring-2 focus:ring-white">
                                </div>

                                {{-- Jenis Kelamin --}}
                                <div class="mb-6">
                                    <label for="jenis_kelamin" class="block text-white text-sm font-bold mb-2">Jenis Kelamin</label>
                                    <select name="jenis_kelamin" id="jenis_kelamin" required
                                        class="w-full px-4 py-2 rounded-lg text-gray-800 focus:outline-none focus:ring-2 focus:ring-white">
                                        <option value="">-- Pilih --</option>
                                        <option value="Laki-laki">Laki-laki</option>
                                        <option value="Perempuan">Perempuan</option>
                                    </select>
                                </div>

                                {{-- Tombol Submit --}}
                                <button type="submit"
                                    class="bg-white text-gray-800 px-4 py-2 rounded-lg hover:shadow-lg hover:text-dark transition duration-300">
                                    Simpan & Lanjut
                                </button>
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