@extends('front.layouts.app')
@section('title', 'About')
@section('content')
<x-nav />

 {{-- hero start --}}
    <section id="about" class="pt-36 mb-45">
        <div class="container"> 
            <div class="px-4 w-full">
                <h2 class="text-base font-medium text-primary py-3 lg:text-lg mb-5">Sistem Pakar Diagnosa HIV/AIDS</h2>
                <div class="text-center pt-40 ">
                    <h1 class="font-bold text-4xl leading-relaxed lg:text-5xl animate-fadeIn">Tentang Sistem Pakar <span class="text-primary">Diagnosa</span> HIV</h1>
                    <p class="text-base py-3 text-secondary leading-relaxed"">Sebuah solusi berbasis kecerdasan buatan untuk membantu diagnosis dini penyakit HIV</p>
                </div>
            </div>
        </div>
    </section>
    {{-- hero end --}}
    {{-- about start --}}
    <section class="pt-36 mb-36" id="about-app">
        <div class="container">
           <div class="flex flex-col lg:flex-row gap-10 mb-16">
                <div class="lg:w-1/2">
                    <div class="bg-white rounded-2xl shadow-xl p-8 card-hover transition-all duration-300 h-full">
                        <div class="flex items-center mb-6">
                            <div class="bg-primary p-3 rounded-lg mr-4">
                             <i data-feather="activity" class="text-white w-6 h-6"></i>
                            </div>
                            <h2 class="text-2xl font-bold text-secondary">Tentang Aplikasi</h2>
                        </div>
                        <p class="text-gray-600 mb-4 leading-relaxed">
                            Sistem Pakar Diagnosa HIV adalah aplikasi web yang dirancang untuk membantu masyarakat umum dalam mendeteksi infeksi HIV berdasarkan gejala yang dialami.
                        </p>
                        <p class="text-gray-600 mb-4 leading-relaxed">
                            Aplikasi ini menggunakan metode <span class="font-semibold text-primary">forward chaining</span>, sistem akan mengevaluasi gejala-gejala yang dimasukkan pengguna dan memberikan diagnosis berdasarkan pengetahuan medis.
                        </p>
                        <p class="text-gray-600 leading-relaxed">
                            Dengan antarmuka yang intuitif dan ramah pengguna, sistem ini dapat memberikan informasi penting tentang risiko HIV, rekomendasi tindakan, serta panduan untuk penanganan lebih lanjut.
                        </p>
                    </div>
                </div>
                <div class="lg:w-1/2">
                    <div class="bg-white rounded-2xl shadow-xl p-8 card-hover transition-all duration-300 h-full">
                        <div class="flex items-center mb-6">
                            <div class="bg-primary p-3 rounded-lg mr-4">
                                <i data-feather="settings" class="text-white w-6 h-6"></i>
                            </div>
                            <h2 class="text-2xl font-bold text-secondary">Fitur Utama</h2>
                        </div>
                        <ul class="space-y-4 text-gray-600 ml-1">
                            <li class="flex items-start">
                                <i data-feather="check-circle" class="w-5 h-5 flex-shrink-0 mt-1 mr-3 text-green-500"></i>
                                <span>Kuesioner gejala yang komprehensif untuk penilaian risiko HIV</span>
                            </li>
                            <li class="flex items-start">
                                <i data-feather="check-circle" class="w-5 h-5 flex-shrink-0 mt-1 mr-3 text-green-500"></i>
                                <span>Diagnosis berbasis aturan (rule-based) yang dikembangkan oleh ahli medis</span>
                            </li>
                            <li class="flex items-start">
                                <i data-feather="check-circle" class="w-5 h-5 flex-shrink-0 mt-1 mr-3 text-green-500"></i>
                                <span>Penjelasan hasil diagnosis yang mudah dipahami</span>
                            </li>
                            <li class="flex items-start">
                                <i data-feather="check-circle" class="w-5 h-5 flex-shrink-0 mt-1 mr-3 text-green-500"></i>
                                <span>Rekomendasi tindakan berdasarkan tingkat risiko</span>
                            </li>
                            <li class="flex items-start">
                                <i data-feather="check-circle" class="w-5 h-5 flex-shrink-0 mt-1 mr-3 text-green-500"></i>
                                <span>Informasi edukatif tentang HIV/AIDS</span>
                            </li>
                            <li class="flex items-start">
                                <i data-feather="check-circle" class="w-5 h-5 flex-shrink-0 mt-1 mr-3 text-green-500"></i>
                                <span>Templat laporan untuk konsultasi dengan tenaga medis</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>  
            
        </div>
    </section>
    {{-- about end --}}
    {{-- data start --}}
    <section class="pt-36 mb-36" id="about-spk">
        <div class="container">
            <div class="text-center mb-20">
                <h2 class="text-3xl font-bold text-secondary mb-4">Apa itu Sistem Pakar?</h2>
            </div>
            <div class="grid md:grid-cols-3 gap-8">
                <div class="bg-white rounded-xl shadow-lg overflow-hidden card-hover transition-all duration-300">
                    <div class="p-6">
                        <div class="bg-primary w-16 h-16 rounded-full flex items-center justify-center mb-4 mx-auto">
                          <i data-feather="cpu" class="text-white w-6 h-6"></i>
                        </div>
                        <h3 class="text-xl font-bold text-center text-secondary mb-3">Definisi Sistem Pakar</h3>
                        <p class="text-gray-600 text-center">
                            Sistem Pakar (Expert System) adalah program komputer yang dirancang untuk meniru kemampuan pengambilan keputusan dari seorang ahli manusia dalam bidang tertentu.
                        </p>
                    </div>
                </div>

                <div class="bg-white rounded-xl shadow-lg overflow-hidden card-hover transition-all duration-300">
                    <div class="p-6">
                        <div class="bg-primary w-16 h-16 rounded-full flex items-center justify-center mb-4 mx-auto">
                          <i data-feather="settings" class="text-white w-6 h-6"></i>
                        </div>
                        <h3 class="text-xl font-bold text-center text-secondary mb-3">Komponen Utama</h3>
                        <ul class="text-gray-600 list-disc list-inside space-y-1 text-center mx-auto">
                            <li>Basis Pengetahuan (Knowledge Base)</li>
                            <li>Mesin Inferensi (Inference Engine)</li>
                            <li>Antarmuka Pengguna (User Interface)</li>
                        </ul>
                    </div>
                </div>

                <div class="bg-white rounded-xl shadow-lg overflow-hidden card-hover transition-all duration-300">
                    <div class="p-6">
                        <div class="bg-primary w-16 h-16 rounded-full flex items-center justify-center mb-4 mx-auto">
                          <i data-feather="zap" class="text-white w-6 h-6"></i>
                        </div>
                        <h3 class="text-xl font-bold text-center text-secondary mb-3">Keunggulan</h3>
                        <ul class="text-gray-600 list-disc list-inside space-y-1 text-center mx-auto">
                            <li>Tersedia 24/7</li>
                            <li>Konsistensi diagnosis</li>
                            <li>Penyimpanan pengetahuan ahli</li>
                            <li>Diagnosis cepat</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="mt-12 bg-primary rounded-2xl p-8">
                <h3 class="text-2xl font-bold text-white mb-6">Bagaimana Sistem Ini Bekerja?</h3>
               <div class="grid md:grid-cols-2 gap-8">
                    <div class="flex flex-col gap-4">
                        <div class="bg-white p-6 rounded-xl shadow-sm h-full min-h-[150px] flex flex-col">    
                            <h4 class="font-semibold text-secondary mb-2 flex items-center">
                                <span class="bg-fourth text-white rounded-full w-6 h-6 flex items-center justify-center mr-4">1</span>
                                Mengumpulkan Basis Pengetahuan
                            </h4>
                            <p class="text-gray-600 pl-10">
                                Tim medis spesialis HIV menyusun aturan diagnostik berdasarkan pengalaman klinis dan pedoman medis terbaru.
                            </p>
                        </div>
                        <div class="bg-white p-6 rounded-xl shadow-sm h-full min-h-[150px] flex flex-col">    
                            <h4 class="font-semibold text-secondary mb-2 flex items-center">
                                <span class="bg-fourth text-white rounded-full w-6 h-6 flex items-center justify-center mr-4">2</span>
                                Memasukkan Gejala
                            </h4>
                            <p class="text-gray-600 pl-10">
                                Pengguna menjawab serangkaian pertanyaan tentang gejala, riwayat kesehatan, dan faktor risiko.
                            </p>
                        </div>
                    </div>
                    <div class="flex flex-col gap-4">
                        <div class="bg-white p-6 rounded-xl shadow-sm h-full min-h-[150px] flex flex-col">   
                            <h4 class="font-semibold text-secondary mb-2 flex items-center">
                                <span class="bg-fourth text-white rounded-full w-6 h-6 flex items-center justify-center mr-4">3</span>
                                Proses Inferensi
                            </h4>
                            <p class="text-gray-600 pl-10">
                                Sistem mencocokkan gejala dengan basis pengetahuan menggunakan metode forward chaining untuk menarik kesimpulan.
                            </p>
                        </div>
                        <div class="bg-white p-6 rounded-xl shadow-sm h-full min-h-[150px] flex flex-col">    
                            <h4 class="font-semibold text-secondary mb-2 flex items-center">
                                <span class="bg-fourth text-white rounded-full w-6 h-6 flex items-center justify-center mr-4">4</span>
                                Hasil dan Rekomendasi
                            </h4>
                            <p class="text-gray-600 pl-10">
                                Sistem memberikan tingkat risiko, kemungkinan diagnosis, dan rekomendasi tindakan berikutnya.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- data end --}}
    {{-- team start --}}
    <section class="pt-36 pb-25 mb-50" id="about-hiv">
        <div class="container">
             <div class="text-center mb-12">
                <h2 class="text-3xl font-bold text-secondary mb-4">Memahami HIV/AIDS</h2>
            </div>

            <div class="bg-white rounded-2xl shadow-xl overflow-hidden mb-8">
                <div class="md:flex">
                    <div class="md:w-1/3 bg-primary p-8 text-white">
                        <h3 class="text-2xl font-bold mb-4">HIV</h3>
                        <p class="mb-6">
                            Human Immunodeficiency Virus (HIV) adalah virus yang menyerang sistem kekebalan tubuh, khususnya sel CD4 (sel T), yang membantu sistem kekebalan tubuh melawan infeksi.
                        </p>
                        <div class="space-y-3">
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Menular melalui kontak dengan cairan tubuh tertentu</span>
                            </div>
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Tidak ada obatnya, tetapi dapat dikendalikan dengan pengobatan</span>
                            </div>
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Bisa tidak menimbulkan gejala selama bertahun-tahun</span>
                            </div>
                        </div>
                    </div>
                    <div class="md:w-1/3 bg-fourth p-8 text-white">
                        <h3 class="text-2xl font-bold mb-4">AIDS</h3>
                        <p class="mb-6">
                            Acquired Immunodeficiency Syndrome (AIDS) adalah tahap lanjutan dari infeksi HIV yang terjadi ketika sistem kekebalan tubuh rusak parah.
                        </p>
                        <div class="space-y-3">
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Diagnosis AIDS dibuat ketika jumlah CD4 turun di bawah 200</span>
                            </div>
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Sering disertai dengan infeksi oportunistik</span>
                            </div>
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Dapat dicegah dengan pengobatan HIV dini</span>
                            </div>
                        </div>
                    </div>
                    <div class="md:w-1/3 bg-primary p-8 text-white">
                        <h3 class="text-2xl font-bold mb-4">Pencegahan</h3>
                        <p class="mb-6">
                            HIV dapat dicegah melalui berbagai langkah yang mengurangi risiko penularan virus.
                        </p>
                        <div class="space-y-3">
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Gunakan kondom saat berhubungan seksual</span>
                            </div>
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Hindari berbagi jarum suntik</span>
                            </div>
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Lakukan tes HIV secara berkala</span>
                            </div>
                            <div class="flex items-start">
                                <i data-feather="alert-circle" class="w-5 h-5 min-w-5 min-h-5 mt-1 mr-2 flex-shrink-0"></i>
                                <span>Gunakan PrEP jika memiliki risiko tinggi</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
<section class="pb-25 mb-20" id="about-med">
    <div class="container">
        <div class="text-center mb-12">
            <h2 class="text-3xl font-bold text-secondary mb-4">Diagnosis & Pengobatan</h2>
        </div>

        <div class="grid md:grid-cols-2 gap-8 mb-12">
            <div class="bg-white rounded-xl shadow-lg p-6 card-hover transition-all duration-300">
                <h3 class="text-xl font-bold text-secondary mb-9 flex items-center">
                    <i data-feather="activity" class="text-primary w-5 h-5 mr-3"></i>
                    Diagnosis Medis
                </h3>
                <div class="space-y-3 text-gray-600">
                    <div class="flex items-start">
                        <i data-feather="circle" class="text-primary w-5 h-5 min-w-5 min-h-5 mt-1 mr-4 flex-shrink-0"></i>
                        <span><strong>Tes Antibodi HIV:</strong> Mendeteksi antibodi terhadap HIV (tes cepat/ELISA)</span>
                    </div>
                    <div class="flex items-start">
                        <i data-feather="circle" class="text-primary w-5 h-5 min-w-5 min-h-5 mt-1 mr-4 flex-shrink-0"></i>
                        <span><strong>Tes Antigen/RNA:</strong> Mendeteksi virus langsung (tes NAT)</span>
                    </div>
                    <div class="flex items-start">
                        <i data-feather="circle" class="text-primary w-5 h-5 min-w-5 min-h-5 mt-1 mr-4 flex-shrink-0"></i>
                        <span><strong>Jendela Serologis:</strong> Perlu diulang jika tes awal negatif tetapi ada risiko baru-baru ini</span>
                    </div>
                    <div class="flex items-start">
                        <i data-feather="circle" class="text-primary w-5 h-5 min-w-5 min-h-5 mt-1 mr-4 flex-shrink-0"></i>
                        <span><strong>Pemantauan:</strong> Hitung CD4 dan viral load untuk memantau perkembangan</span>
                    </div>
                </div>
            </div>

            <div class="bg-white rounded-xl shadow-lg p-6 card-hover transition-all duration-300">
                <h3 class="text-xl font-bold text-secondary mb-4 flex items-center">
                    <i data-feather="heart" class="text-primary w-5 h-5 mr-3"></i>
                    Mitigasi dan Pengobatan
                </h3>
                <div class="space-y-5 text-gray-600">
                    <div class="bg-primary p-4 rounded-lg">
                        <h4 class="font-semibold text-white mb-2 flex items-center">
                            <i data-feather="check" class="text-white mr-2"></i>
                            Terapi Anti (ARV)
                        </h4>
                        <p class="text-white">
                            ARV adalah obat untuk mengendalikan perkembangan HIV. Dengan pengobatan yang tepat, ODHA bisa hidup panjang dan sehat.
                        </p>
                    </div>
                    <div class="bg-primary p-4 rounded-lg">
                        <h4 class="font-semibold text-white mb-2 flex items-center">
                            <i data-feather="check" class="text-white mr-2"></i>
                            Gaya Hidup Sehat
                        </h4>
                        <p class="text-white">
                            Menerapkan pola hidup sehat seperti makan bergizi, olahraga, dan manajemen stres membantu memperkuat kekebalan tubuh.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    {{-- team end --}}
<x-footer />
@endsection