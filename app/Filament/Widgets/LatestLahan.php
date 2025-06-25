<?php

namespace App\Filament\Widgets;

use App\Models\HasilDiagnosa;
use App\Models\Lahan;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;

class LatestLahan extends BaseWidget
{
    protected static ?int $sort = 4;
    protected int | string | array $columnSpan = 'full';

    protected static bool $isLazy = false;
    protected static ?string $heading = 'Data Konsultasi Terbaru';
    public function table(Table $table): Table
    {
        return $table
            ->query(
                HasilDiagnosa::query()
                    ->latest()
            )
            ->defaultPaginationPageOption(5)
            ->paginated(5)
            ->columns([
                Tables\Columns\TextColumn::make('nama')->label('Nama')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('usia')->label('Usia')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('jenis_kelamin')->label('Jenis Kelamin')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('penyakit')->label('Penyakit')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('persentase')->label('Persentase (%)')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('created_at')->label('Tanggal Diagnosa')->dateTime()->searchable()->sortable(),
            ]);
    }
}
