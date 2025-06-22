<?php

namespace App\Filament\Resources;

use App\Filament\Resources\GejalaResource\Pages;
use App\Filament\Resources\GejalaResource\RelationManagers;
use App\Models\Gejala;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class GejalaResource extends Resource
{
    protected static ?string $model = Gejala::class;
    protected static bool $isLazy = false;
    protected static ?string $modelLabel = 'Gejala';
    protected static ?string $pluralModelLabel = 'Daftar Gejala';
    protected static ?string $navigationLabel = 'Gejala';
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('penyakits')              // nama field = nama relasi
                    ->label('Pilih Penyakit')
                    ->relationship('penyakits', 'nama_penyakit')
                    ->preload()                        // supaya cepat
                    ->searchable()
                    ->multiple()                       // ← hapus kalau mau pilih 1 saja
                    ->required(),
                TextInput::make('nama_gejala')
                    ->label('Nama Gejala')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')
                    ->label('Id')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('nama_gejala')
                    ->label('Nama Gejala')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('penyakits.nama_penyakit')
                    ->label('Penyakit')
                    ->formatStateUsing(function ($state, $record) {
                        return $record->penyakits->pluck('nama_penyakit')->join(', ');
                    })
                    ->sortable()
                    ->searchable(),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
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
            'index' => Pages\ListGejalas::route('/'),
            'create' => Pages\CreateGejala::route('/create'),
            'edit' => Pages\EditGejala::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
