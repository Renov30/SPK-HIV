<?php

namespace App\Filament\Resources\SolusiResource\Pages;

use App\Filament\Resources\SolusiResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSolusis extends ListRecords
{
    protected static string $resource = SolusiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
