@extends('front.layouts.app')
@section('title', 'Home')
@section('content')
    <x-nav/>
    <!-- hero section start -->
    <section class="hero" id="home">
      <main class="content">
        <h1>
          Selamat Datang di Aplikasi <span class="green">Peta </span>
          <span>Jagung</span>
        </h1>
        <p>
          Lorem, ipsum dolor sit amet consectetur adipisicing elit. Asperiores,
          reprehenderit!
        </p>
        <a href="{{route('front.data')}}" class="cta">Lihat Data</a>
      </main>
    </section>
    <!-- hero section end -->
    <!-- about section start -->
    <section class="about" id="about">
      <h2><span>Tentang</span> Kami</h2>

      <div class="row">
        <div class="about-img">
          <img src="{{asset('img/tentang-kami.jpg') }}" alt="Tentang Kami" />
        </div>
        <div class="content">
          <h3>Dinas Tanaman & Holtikultura</h3>
          <p>
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa
            molestias ipsam temporibus nesciunt nisi exercitationem.
          </p>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus,
            atque! Atque quisquam culpa laboriosam numquam alias minus pariatur,
            ad temporibus.
          </p>
        </div>
      </div>
    </section>
    <!-- about section end -->
    <!-- visi mis section start -->
    <section class="visi-misi">
      <h2><span>Visi</span> & Misi</h2>
      <div class="row">
        <div class="visi">
          <h3>Visi</h3>
          <p>
            Terwujudnya kabupaten merauke sebagai kawasan pertumbuhan ekonomi
            perbatasan yang strategis dengan mengoptimalkan sumber daya manusia
            dan sumber daya alam lokal melalui pertanian sebagai sektor utama.
          </p>
        </div>
        <div class="misi-isi">
          <h3>Misi</h3>
          <div class="misi">
            <div class="misi-img">
              <img src="{{asset('img/profil-kepala.jpg') }}" alt="Kepala Dinas" />
            </div>
            <div class="content">
              <ol>
                <li>
                  Peningkatan stabilitas wilayah dan peran sebagai daerah
                  perbatasan
                </li>
                <li>
                  Peningkatan kapasitas kelembagaan pemerintahan dan wilayah
                  pengembangan pada tingkat kampung, distrik dan kabupaten.
                </li>
                <li>Pembentukan kota madya dan provinsi papua selatan</li>
                <li>
                  Pembangunan pertanian yang berorientasi pada perwujudan
                  lumbung pangan untuk ketahanan pangan di tingkat nasional
                  maupun internasional
                </li>
                <li>Penguatan ekonomi daerah dan peluang investasi</li>
                <li>
                  Peningkatan kualitas sumber daya manusia sesuai pengembangan
                  potensi daerah
                </li>
                <li>
                  Peningkatan kualitas pelayanan kesehatan sampai ke tingkat
                  kampung
                </li>
                <li>Penguatan identitas budaya dan kearifan lokal.</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- visi mis section end -->
    <!-- contact section start -->
    <section id="contact" class="contact">
      <h2><span>Kontak</span> Kami</h2>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit,
        culpa.
      </p>

      <div class="row">
        <iframe
          class="map"
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d17241.878200672378!2d140.39961238389768!3d-8.511549945196895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x69b5158da996ad45%3A0x9a12acf62d5af96d!2sDinas%20Tanaman%20Pangan%20Kabupaten%20Merauke!5e0!3m2!1sen!2sid!4v1738501342731!5m2!1sen!2sid"
          allowfullscreen=""
          loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"
        ></iframe>

        <form action="">
          <div class="input-group">
            <i data-feather="user"></i>
            <input type="text" placeholder="nama" />
          </div>
          <div class="input-group">
            <i data-feather="mail"></i>
            <input type="text" placeholder="email" />
          </div>
          <div class="input-group">
            <i data-feather="phone"></i>
            <input type="text" placeholder="no.hp" />
          </div>
          <button type="submit" class="kirim">Kirim Pesan</button>
        </form>
      </div>
    </section>
    <!-- contact section end -->
    <x-footer/>
@endsection
