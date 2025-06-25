<?php

namespace App\Filament\Widgets;

use App\Models\HasilDiagnosa;
use App\Models\Produksi;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;

class ProduksiKuartal extends ChartWidget
{
    protected static ?string $heading = 'Jumlah Konsultasi Perbulan';
    protected static ?int $sort = 3;
    protected int | string | array $columnSpan = 'full';

    protected static bool $isLazy = false;

    protected function getData(): array
    {
        // Ambil data jumlah hasil diagnosa per bulan dan tahun
        $data = HasilDiagnosa::select(
            DB::raw('MONTH(created_at) as bulan'),
            DB::raw('YEAR(created_at) as tahun'),
            DB::raw('COUNT(*) as jumlah')
        )
            ->groupBy('tahun', 'bulan')
            ->orderBy('tahun')
            ->orderBy('bulan')
            ->get();

        // Ambil daftar bulan dalam format angka dan label (Jan, Feb, dst)
        $bulanLabels = [
            1 => 'Jan',
            2 => 'Feb',
            3 => 'Mar',
            4 => 'Apr',
            5 => 'Mei',
            6 => 'Jun',
            7 => 'Jul',
            8 => 'Agu',
            9 => 'Sep',
            10 => 'Okt',
            11 => 'Nov',
            12 => 'Des',
        ];

        // Ambil semua tahun yang ada
        $tahunList = $data->pluck('tahun')->unique();
        $dataPerTahun = [];

        // Inisialisasi data default: setiap bulan = 0
        foreach ($tahunList as $tahun) {
            $dataPerTahun[$tahun] = array_fill(0, 12, 0); // 12 bulan
        }

        // Isi data sesuai hasil query
        foreach ($data as $item) {
            $dataPerTahun[$item->tahun][$item->bulan - 1] = (int) $item->jumlah;
        }

        // Siapkan dataset chart
        $datasets = [];
        $colors = ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF', '#C9CBCF'];
        $index = 0;

        foreach ($dataPerTahun as $tahun => $jumlahPerBulan) {
            $datasets[] = [
                'label' => "Diagnosa {$tahun}",
                'data' => $jumlahPerBulan,
                'borderColor' => $colors[$index % count($colors)],
                'backgroundColor' => 'transparent',
                'fill' => false,
                'tension' => 0.4,
            ];
            $index++;
        }

        return [
            'labels' => array_values($bulanLabels),
            'datasets' => $datasets,
        ];
    }


    protected function getType(): string
    {
        return 'line'; // Menggunakan line chart
    }
}
