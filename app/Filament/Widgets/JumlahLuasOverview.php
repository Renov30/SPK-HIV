<?php

namespace App\Filament\Widgets;

use App\Models\Lahan;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class JumlahLuasOverview extends BaseWidget
{
    protected function getStats(): array
    {
        $jumlahProduksi = Lahan::sum('hasil_produksi');
        $jumlahLuas = Lahan::sum('luas_lahan');
        return [
            //
            Stat::make('Total produksi', $jumlahProduksi . ' ton')
                ->description('Total hasil produksi seluruh lahan di Merauke'),
            Stat::make('Total Luas', $jumlahLuas . ' hektar')
                ->description('Total luas seluruh lahan di Merauke'),
        ];
    }
}
