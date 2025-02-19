<a href="{{route('front.detail', $data->slug)}}">
    <div class="card">
        @if ($thumbnail)
            <img src="{{Storage::url($thumbnail->gambar)}}" />
        @endif
      <div class="card-content">
        <p class="nama-petani">Lahan Pak {{$data->name}}</p>
        <p>Nama Petani : {{$data->name}}</p>
        <p>Distrik : {{$data->distrik->name}}</p>
        <p>Alamat : {{$data->alamat}}</p>
      </div>
    </div>
  </a>