<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hasil Diagnosa</title>
    <style>
        body { font-family: DejaVu Sans, sans-serif; }
    </style>
</head>
<body>
    <h2>Hasil Diagnosa HIV/AIDS</h2>

    <p><strong>Nama:</strong> {{ $data->nama }}</p>
    <p><strong>Usia:</strong> {{ $data->usia }} tahun</p>
    <p><strong>Jenis Kelamin:</strong> {{ $data->jenis_kelamin }}</p>

    <hr>

    <h3>Hasil Diagnosa</h3>
    <p>Berdasarkan gejala yang dimasukkan, kemungkinan anda mengidap: <strong>{{ ucfirst($data->penyakit) }}</strong></p>
    <p>Tingkat kepastian: <strong>{{ number_format($data->persentase, 1) }}%</strong></p>

    <h4>Persentase Semua Penyakit:</h4>
    <ul>
        @foreach ($persentase as $nama => $value)
            <li>{{ ucfirst($nama) }}: {{ $value }}%</li>
        @endforeach
    </ul>

    <h4>Solusi:</h4>
    @foreach ($solusi as $s)
        <p>- {{ $s }}</p>
    @endforeach
</body>
</html>
