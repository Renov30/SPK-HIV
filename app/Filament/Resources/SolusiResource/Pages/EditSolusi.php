<?php

namespace App\Filament\Resources\SolusiResource\Pages;

use App\Filament\Resources\SolusiResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSolusi extends EditRecord
{
    protected static string $resource = SolusiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
