<?php

namespace App\Filament\Widgets;

use App\Models\Lahan;
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
        $data = Lahan::select('distrik_id')
            ->selectRaw('SUM(hasil_produksi) as total_produksi')
            ->groupBy('distrik_id')
            ->with('distrik')
            ->get();
        return [
            'labels' => $data->pluck('distrik.name')->toArray(),
            'datasets' => [
                [
                    'data' => $data->pluck('total_produksi')->toArray(),
                    'backgroundColor' => ['#ff6384', '#36a2eb', '#ffcd56'],
                ],
            ],
            // 'labels' => ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        ];
    }

    protected function getType(): string
    {
        return 'pie';
    }
}
