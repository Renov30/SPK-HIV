@extends('front.layouts.app')
@section('title', 'Peta')
@section('content')
        <x-nav/>
        <!-- content start -->
        <section class="content-peta">
            <h2>Peta <span>Lahan</span></h2>
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Ratione, repellat!
            </p>
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
            </div>
        </section>
        <!-- content section end -->
        <x-footer/>
@endsection