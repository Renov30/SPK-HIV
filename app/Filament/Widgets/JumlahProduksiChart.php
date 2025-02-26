<?php

namespace App\Filament\Widgets;

use App\Models\Lahan;
use App\Models\Produksi;
use Filament\Widgets\ChartWidget;

class JumlahProduksiChart extends ChartWidget
{
    protected static ?int $sort = 2;
    public function getColumns(): int
    {
        return 2;
    }

    protected static bool $isLazy = false;
    protected static ?string $heading = 'Total Produksi Per Distrik (ton)';

    protected function getData(): array
    {
        $data = Produksi::selectRaw('lahans.distrik_id, SUM(produksis.hasil_produksi) as total_produksi')
            ->join('lahans', 'produksis.lahan_id', '=', 'lahans.id') // Join dengan tabel lahan
            ->groupBy('lahans.distrik_id')
            ->with('lahan.distrik') // Ambil data distrik
            ->get();

        return [
            'labels' => $data->map(fn($item) => $item->lahan->distrik->name)->toArray(), // Ambil nama distrik
            'datasets' => [
                [
                    'data' => $data->pluck('total_produksi')->toArray(), // Ambil hasil produksi total
                    'backgroundColor' => ['#ff6384', '#36a2eb', '#ffcd56'],
                ],
            ],
        ];
    }

    protected function getType(): string
    {
        return 'pie';
    }
}
