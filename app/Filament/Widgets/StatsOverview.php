<?php

namespace App\Filament\Widgets;

use App\Models\Distrik;
use App\Models\Galeri;
use App\Models\Gejala;
use App\Models\Lahan;
use App\Models\Penyakit;
use App\Models\Solusi;
use App\Models\User;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends BaseWidget
{
    protected static ?int $sort = 0;
    public function getColumn(): int
    {
        return 2;
    }
    protected static bool $isLazy = false;
    protected function getStats(): array
    {
        $penyakit = Penyakit::count();
        $gejala = Gejala::count();
        $solusi = Solusi::count();
        return [
            //
            Stat::make('Jumlah penyakit', $penyakit)
                ->description('Data penyakit yang diinputkan')
            // ->Icon('heroicon-o-map')
            ,
            Stat::make('Jumlah gejala', $gejala)
                ->description('Data gejala dari penyakit')
            // ->Icon('heroicon-o-map-pin')
            ,
            Stat::make('Total solusi', $solusi)
                ->description('Data solusi penyakit')
            // ->Icon('heroicon-o-information-circle')
            ,
        ];
    }
}
