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
                        var lokasi = { lat: -8.4975434, lng: 140.3882068 }; // Contoh: Jakarta
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
@push('after-scripts')
 <script>
        function initMap() {
            var mapOptions = {
                zoom: 12,
                center: { lat: -8.4975434, lng: 140.3882068  }, // Default: Jakarta
            };

            var map = new google.maps.Map(document.getElementById("map"), mapOptions);
            var activeInfoWindow = null; 

            var locations = @json($lahans);

            locations.forEach(function(lahan) {
                var position = new google.maps.LatLng(lahan.latitude, lahan.longitude);

                var contentString =
                    '<div>' +
                        '<h5>' + lahan.name + '</h5>' +
                        '<p>' + lahan.alamat + '</p>' +
                        '<a href="/data/detail-lahan/' + lahan.slug + '">Lihat Detail</a>' +
                    '</div>';

                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });

                var marker = new google.maps.Marker({
                    position: position,
                    map: map,
                    title: lahan.name,
                    icon: {
                        url: "{{asset('img/corn-cob.png')}}", // Ganti dengan path gambar Anda
                        scaledSize: new google.maps.Size(30, 30), // Ubah ukuran sesuai kebutuhan
                    }
                });

                marker.addListener('click', function() {
                    if (activeInfoWindow) {
                        activeInfoWindow.close();
                    }
                    // map.setZoom(15);
                    // map.setCenter(marker.getPosition());
                    infowindow.open(map, marker);
                    activeInfoWindow = infowindow;
                });

                google.maps.event.addListener(map, 'click', function() {
                    if (activeInfoWindow) {
                        activeInfoWindow.close();
                        activeInfoWindow = null;
                    }
                });
            });
        }
    </script>
    <script
        async
        defer
        src="https://maps.googleapis.com/maps/api/js?key={{env('GOOGLE_MAPS_API_KEY')}}&callback=initMap"
    ></script>
@endpush