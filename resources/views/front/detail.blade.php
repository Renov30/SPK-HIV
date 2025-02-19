@extends('front.layouts.app')
@section('title', 'Detail')
@section('content')
    <body>
        <x-nav/>
        <!-- content section start -->
        <section class="detail">
            <h2>Detail Lahan</h2>
            <div class="row">
                <div id="map"></div>
                <script>
                    function initMap() {
                        var lokasi = { lat: -6.2, lng: 106.816666 }; // Contoh: Jakarta
                        var map = new google.maps.Map(
                            document.getElementById("map"),
                            {
                                zoom: 10,
                                center: lokasi,
                            }
                        );

                        var marker = new google.maps.Marker({
                            position: lokasi,
                            map: map,
                        });
                    }
                </script>

                <div class="teks">
                    <table>
                        <tr>
                            <td>Nama Lahan</td>
                            <td>:</td>
                            <td>Lahan Pak Maulana</td>
                        </tr>
                        <tr>
                            <td>Nama Petani</td>
                            <td>:</td>
                            <td>Maulana Fauzi</td>
                        </tr>
                        <tr>
                            <td>Kelompok Tani</td>
                            <td>:</td>
                            <td>KT PLN</td>
                        </tr>
                        <tr>
                            <td>Distrik</td>
                            <td>:</td>
                            <td>Semangga</td>
                        </tr>
                        <tr>
                            <td>Alamat</td>
                            <td>:</td>
                            <td>Semangga, Gang mulyadi RT 006 RW 003</td>
                        </tr>
                        <tr>
                            <td>Lokasi</td>
                            <td>:</td>
                            <td>098798656 45798070 767575765</td>
                        </tr>
                        <tr>
                            <td>Luas Tanam</td>
                            <td>:</td>
                            <td>25 Hektar</td>
                        </tr>
                        <tr>
                            <td>Luas Panen</td>
                            <td>:</td>
                            <td>21 Hektar</td>
                        </tr>
                        <tr>
                            <td>Produksi</td>
                            <td>:</td>
                            <td>55.76 ton</td>
                        </tr>
                        <tr>
                            <td>Produktivitas</td>
                            <td>:</td>
                            <td>4.50 ton/ha</td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>
        <!-- content section end -->
        <!-- gallery section start -->
        <section class="photos">
            <h3>Foto Lahan</h3>
            <div class="gallery" id="gallery">
                <img
                    src="img/gallery-lahan-jagung/1.jpeg"
                    alt="Foto Lahan 1"
                    onclick="openLightbox(this.src)"
                />
                <img
                    src="img/gallery-lahan-jagung/2.png"
                    alt="Foto Lahan 1"
                    onclick="openLightbox(this.src)"
                />
                <img
                    src="img/gallery-lahan-jagung/3.jpg"
                    alt="Foto Lahan 1"
                    onclick="openLightbox(this.src)"
                />
                <img
                    src="img/gallery-lahan-jagung/4.jpg"
                    alt="Foto Lahan 1"
                    onclick="openLightbox(this.src)"
                />
                <img
                    src="img/gallery-lahan-jagung/4.jpg"
                    alt="Foto Lahan 1"
                    onclick="openLightbox(this.src)"
                />
                <img
                    src="img/gallery-lahan-jagung/4.jpg"
                    alt="Foto Lahan 1"
                    onclick="openLightbox(this.src)"
                />
                <img
                    src="img/gallery-lahan-jagung/4.jpg"
                    alt="Foto Lahan 1"
                    onclick="openLightbox(this.src)"
                />
            </div>
            <div class="show-more" onclick="toggleGallery()">Show More</div>
        </section>
        <!-- lightbox start -->
        <div class="lightbox" id="lightbox">
            <span onclick="closeLightbox()">×</span>
            <img id="lightbox-img" alt="Enlarged view of the selected image" />
        </div>
        <!-- lightbox end -->

        <!-- gallery section end -->
        <!-- other content start -->
        <section class="other">
            <h3>Lahan Lainnya</h3>
            <!-- card view -->
            <div class="grid" id="cardView">
                <a href="detail.html">
                    <div class="card">
                        <img
                            src="img/gallery-lahan-jagung/1.jpeg"
                            alt="Semangga"
                        />
                        <div class="card-content">
                            <p class="nama-petani">Lahan Pak Maulana</p>
                            <p>Nama Petani : Maulana Fauzi</p>
                            <p>Kelompok Tani : KT. Buaya</p>
                            <p>Distrik : Semangga</p>
                        </div>
                    </div>
                </a>

                <div class="card">
                    <img src="img/gallery-lahan-jagung/2.png" alt="Semangga" />
                    <div class="card-content">
                        <p class="nama-petani">Lahan Pak Maulana</p>
                        <p>Nama Petani : Maulana Fauzi</p>
                        <p>Kelompok Tani : KT. Buaya</p>
                        <p>Distrik : Semangga</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/gallery-lahan-jagung/3.jpg" alt="Semangga" />
                    <div class="card-content">
                        <p class="nama-petani">Lahan Pak Maulana</p>
                        <p>Nama Petani : Maulana Fauzi</p>
                        <p>Kelompok Tani : KT. Buaya</p>
                        <p>Distrik : Semangga</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/gallery-lahan-jagung/4.jpg" alt="Semangga" />
                    <div class="card-content">
                        <p class="nama-petani">Lahan Pak Maulana</p>
                        <p>Nama Petani : Maulana Fauzi</p>
                        <p>Kelompok Tani : KT. Buaya</p>
                        <p>Distrik : Semangga</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- other content end -->
       <x-footer/>
@endsection
@push('after-styles')
    <link rel="stylesheet" href="{{ asset('css/filament/lightbox.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/filament/other.css') }}" />
@endpush
@push('after-scripts')
    <script
        async
        defer
        src="https://maps.googleapis.com/maps/api/js?key={{env('GOOGLE_MAPS_API_KEY')}}&callback=initMap"
    ></script>
@endpush
