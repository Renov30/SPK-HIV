<?php

namespace App\Filament\Widgets;

use App\Models\Distrik;
use App\Models\Galeri;
use App\Models\Lahan;
use App\Models\User;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends BaseWidget
{
    protected function getStats(): array
    {
        $distrik = Distrik::count();
        $lahan = Lahan::count();
        $galeri = Galeri::count();
        return [
            //
            Stat::make('Jumlah distrik', $distrik . ' Distrik')
                ->description('32k increase')
                ->Icon('heroicon-o-map'),
            Stat::make('Jumlah lahan', $lahan . ' Lahan')
                ->description('3% increase')
                ->Icon('heroicon-o-map-pin'),
            Stat::make('Jumlah foto lahan', $galeri . ' Foto')
                ->description('7% decrease')
                ->Icon('heroicon-o-photo'),
        ];
    }
    protected static ?int $sort = 2;
}
