<?php

namespace App\Filament\Widgets;

use App\Models\Lahan;
use App\Models\Solusi;
use Filament\Widgets\ChartWidget;

class JumlahProduksiChart extends ChartWidget
{
    protected static ?int $sort = 2;
    public function getColumns(): int
    {
        return 2;
    }

    protected static bool $isLazy = false;
    protected static ?string $heading = 'Total Solusi Per Penyakit';

    private function generateColorFromId($id): string
    {
        // Ambil 6 karakter pertama dari hash md5 ID, agar jadi warna hex
        return '#' . substr(md5($id), 0, 6);
    }

    protected function getData(): array
    {
        $data = Solusi::selectRaw('penyakit_id, COUNT(*) as total')
            ->groupBy('penyakit_id')
            ->with('penyakit')
            ->get();

        $backgroundColors = $data->pluck('penyakit_id')->map(function ($id) {
            return $this->generateColorFromId($id);
        })->toArray();

        return [
            'labels' => $data->pluck('penyakit.nama_penyakit')->toArray(),
            'datasets' => [
                [
                    'data' => $data->pluck('total')->toArray(),
                    'backgroundColor' => $backgroundColors,
                ],
            ],
        ];
    }

    protected function getType(): string
    {
        return 'doughnut';
    }
}
