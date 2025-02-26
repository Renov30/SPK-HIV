<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProduksiResource\Pages;
use App\Filament\Resources\ProduksiResource\RelationManagers;
use App\Models\Produksi;
use Filament\Forms;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ProduksiResource extends Resource
{
    protected static ?string $model = Produksi::class;

    protected static ?string $modelLabel = 'Produksi'; // Label untuk satu item
    protected static ?string $pluralModelLabel = 'Daftar Hasil Produksi'; // Label untuk daftar item
    protected static ?string $navigationLabel = 'Produksi'; // Label di sidebar

    protected static ?string $navigationIcon = 'heroicon-o-archive-box';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
                Repeater::make('produksis')
                    ->columnSpan('full')
                    ->addActionLabel('Tambah Hasil Produksi')
                    ->schema([
                        Grid::make(2)
                            ->schema([
                                Select::make('lahan_id')
                                    ->label('Lahan')
                                    ->required()
                                    ->relationship('lahan', 'name')
                                    ->preload(),
                                Select::make('tahun_produksi')
                                    ->label('Tahun')
                                    ->options(
                                        array_combine(range(date('Y'), 2015), range(date('Y'), 2015))
                                    )
                                    ->required(),
                                TextInput::make('hasil_produksi')
                                    ->label('Jumlah Produksi')
                                    ->suffix('ton')
                                    ->required(),
                            ])
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
                TextColumn::make('lahan.name')
                    ->label('Nama Lahan')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('tahun_produksi')
                    ->label('Tahun Produksi')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('hasil_produksi')
                    ->label('Hasil Produksi')
                    ->searchable()
                    ->sortable(),
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
            'index' => Pages\ListProduksis::route('/'),
            'create' => Pages\CreateProduksi::route('/create'),
            'edit' => Pages\EditProduksi::route('/{record}/edit'),
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
