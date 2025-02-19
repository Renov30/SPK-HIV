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
        @forelse ($semua as $lahan)
          <x-data-card :data="$lahan"/>
        @empty
          <p>Belum ada data lahan</p>
        @endforelse
            

      </div>
      <!-- table view start -->
      <div class="hidden" id="tableView">
        <table>
          <thead>
            <tr>
              <th>Foto</th>
              <th>Nama Lahan</th>
              <th>Nama Petani</th>
              <th>Distrik</th>
              <th>Alamat</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            @forelse ($semua as $lahan)
              <x-data-table :data="$lahan"/>              
            @empty
              <p>Belum ada data lahan</p>
            @endforelse

          </tbody>
        </table>
      </div>
      <!-- table view end -->
    </section>
    <!-- photo grid end -->

   <x-footer/>
@endsection
