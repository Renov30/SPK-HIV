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

                                <p class="mb-4 text-white lg:text-2xl">
                                    Apakah anda mengalami {{ $gejala }} ?
                                </p>
                                <div class="flex mb-4">
                                    <button type="submit" name="jawaban" value="ya"
                                    class="justify-center items-center font-medium text-gray-800 bg-white flex px-3 py-2 w-20 rounded-lg hover:text-dark hover:shadow-lg duration-300 ease-in-out cursor-pointer">Ya</button>
                                    <button type="submit" name="jawaban" value="tidak"
                                    class="justify-center items-center font-medium text-gray-800 bg-white flex ml-3 px-3 py-2 w-20 rounded-lg hover:text-dark hover:shadow-lg duration-300 ease-in-out cursor-pointer">Tidak</button>
                                    <button type="submit" name="jawaban" value="ulang"
                                    class="justify-center items-center font-medium text-gray-800 bg-white flex ml-3 px-3 py-2 w-20 rounded-lg hover:text-dark hover:shadow-lg duration-300 ease-in-out cursor-pointer">Ulang</button>
                                </div>
                                <p class="text-xs text-white py-3 italic lg:text-xs">* pilih gejala berdasarkan kondisi yang anda rasakan</p>
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