<?php

namespace App\Filament\Resources;

use App\Filament\Resources\HasilDiagnosaResource\Pages;
use App\Filament\Resources\HasilDiagnosaResource\RelationManagers;
use App\Models\HasilDiagnosa;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class HasilDiagnosaResource extends Resource
{
    protected static ?string $model = HasilDiagnosa::class;
    protected static bool $isLazy = false;
    protected static ?string $modelLabel = 'Riwayat Konsultasi'; // Label untuk satu item
    protected static ?string $pluralModelLabel = 'Daftar Riwayat Konsultasi'; // Label untuk daftar item
    protected static ?string $navigationLabel = 'Riwayat Konsultasi'; // Label di sidebar
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('usia'),
                Tables\Columns\TextColumn::make('jenis_kelamin'),
                Tables\Columns\TextColumn::make('penyakit')->searchable(),
                Tables\Columns\TextColumn::make('persentase')->label('Persentase (%)'),
                Tables\Columns\TextColumn::make('created_at')->label('Tanggal Diagnosa')->dateTime(),
            ])
            ->filters([])
            ->actions([
                // Tables\Actions\ViewAction::make(),
                Tables\Actions\Action::make('Download PDF')
                    ->icon('heroicon-o-arrow-down-tray')
                    ->color('success')
                    ->url(fn($record) => route('front.hasilresource.pdf', $record->id))
                    ->openUrlInNewTab()
                    ->label('Download PDF'),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListHasilDiagnosas::route('/'),
            'create' => Pages\CreateHasilDiagnosa::route('/create'),
            'edit' => Pages\EditHasilDiagnosa::route('/{record}/edit'),
        ];
    }
}
