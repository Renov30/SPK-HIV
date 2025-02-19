@extends('front.layouts.app')
@section('title', 'Data')
@section('content')
    <x-nav/>
    <!-- photo grid start -->
    <section class="photo-grid">
      <h2>Data Lahan <span>Jagung</span></h2>
      <p class="info">
        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dicta, ipsam?
      </p>

      <div class="top-bar">
        <!-- search bar -->
        <form action="#" class="search">
          <input type="text" placeholder="Search.." name="search" />
          <button type="submit"><i data-feather="search"></i></button>
        </form>
        <!-- toggle button -->
        <button class="toggleBtn" id="toggleViewBtn">
          <i data-feather="table"></i>&nbsp;Card View
        </button>
      </div>

      <!-- card view -->
      <div class="grid" id="cardView">
        @foreach ( $semua as $data )
            @php
              $thumbnail = $data->galeri->where('thumbnail', true)->first();
            @endphp
            <x-data-card :data="$data" :thumbnail="$thumbnail"/>
        @endforeach
      </div>
      <!-- table view start -->
      <div class="hidden" id="tableView">
        <table>
          <thead>
            <tr>
              <th>Image</th>
              <th>Title</th>
              <th>Nama</th>
              <th>KT</th>
              <th>Distrik</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <img src="img/gallery-lahan-jagung/1.jpeg" alt="Semangga" />
              </td>
              <td><p class="nama-petani">Lahan Pak Maulana</p></td>
              <td><p>Nama Petani : Maulana Fauzi</p></td>
              <td><p>Kelompok Tani : KT. Buaya</p></td>
              <td><p>Distrik : Semangga</p></td>
              <td>
                <p>
                  <a href="detail.html"><button>Lihat Detail</button></a>
                </p>
              </td>
            </tr>
            <tr>
              <td>
                <img src="img/gallery-lahan-jagung/2.png" alt="Semangga" />
              </td>
              <td><p class="nama-petani">Lahan Pak Maulana</p></td>
              <td><p>Nama Petani : Maulana Fauzi</p></td>
              <td><p>Kelompok Tani : KT. Buaya</p></td>
              <td><p>Distrik : Semangga</p></td>
              <td>
                <p><button>Lihat Detail</button></p>
              </td>
            </tr>
            <tr>
              <td>
                <img src="img/gallery-lahan-jagung/3.jpg" alt="Semangga" />
              </td>
              <td><p class="nama-petani">Lahan Pak Maulana</p></td>
              <td><p>Nama Petani : Maulana Fauzi</p></td>
              <td><p>Kelompok Tani : KT. Buaya</p></td>
              <td><p>Distrik : Semangga</p></td>
              <td>
                <p><button>Lihat Detail</button></p>
              </td>
            </tr>
            <tr>
              <td>
                <img src="img/gallery-lahan-jagung/4.jpg" alt="Semangga" />
              </td>
              <td><p class="nama-petani">Lahan Pak Maulana</p></td>
              <td><p>Nama Petani : Maulana Fauzi</p></td>
              <td><p>Kelompok Tani : KT. Buaya</p></td>
              <td><p>Distrik : Semangga</p></td>
              <td>
                <p><button>Lihat Detail</button></p>
              </td>
            </tr>
            <tr>
              <td>
                <img src="img/gallery-lahan-jagung/5.jpg" alt="Semangga" />
              </td>
              <td><p class="nama-petani">Lahan Pak Maulana</p></td>
              <td><p>Nama Petani : Maulana Fauzi</p></td>
              <td><p>Kelompok Tani : KT. Buaya</p></td>
              <td><p>Distrik : Semangga</p></td>
              <td>
                <p><button>Lihat Detail</button></p>
              </td>
            </tr>
            <tr>
              <td>
                <img src="img/gallery-lahan-jagung/6.jpg" alt="Semangga" />
              </td>
              <td><p class="nama-petani">Lahan Pak Maulana</p></td>
              <td><p>Nama Petani : Maulana Fauzi</p></td>
              <td><p>Kelompok Tani : KT. Buaya</p></td>
              <td><p>Distrik : Semangga</p></td>
              <td>
                <p><button>Lihat Detail</button></p>
              </td>
            </tr>
            <tr>
              <td>
                <img src="img/gallery-lahan-jagung/7.jpg" alt="Semangga" />
              </td>
              <td><p class="nama-petani">Lahan Pak Maulana</p></td>
              <td><p>Nama Petani : Maulana Fauzi</p></td>
              <td><p>Kelompok Tani : KT. Buaya</p></td>
              <td><p>Distrik : Semangga</p></td>
              <td>
                <p><button>Lihat Detail</button></p>
              </td>
            </tr>
            <tr>
              <td>
                <img src="img/gallery-lahan-jagung/8.jpeg" alt="Semangga" />
              </td>
              <td><p class="nama-petani">Lahan Pak Maulana</p></td>
              <td><p>Nama Petani : Maulana Fauzi</p></td>
              <td><p>Kelompok Tani : KT. Buaya</p></td>
              <td><p>Distrik : Semangga</p></td>
              <td>
                <p><button>Lihat Detail</button></p>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <!-- table view end -->
    </section>
    <!-- photo grid end -->

   <x-footer/>
@endsection
