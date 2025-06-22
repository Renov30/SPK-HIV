<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SolusiResource\Pages;
use App\Filament\Resources\SolusiResource\RelationManagers;
use App\Models\Solusi;
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

class SolusiResource extends Resource
{
    protected static ?string $model = Solusi::class;
    protected static ?string $modelLabel = 'Solusi'; // Label untuk satu item
    protected static ?string $pluralModelLabel = 'Daftar Solusi'; // Label untuk daftar item
    protected static ?string $navigationLabel = 'Solusi'; // Label di sidebar
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('penyakit_id')
                    ->label('Pilih Penyakit')
                    ->required()
                    ->relationship('penyakit', 'nama_penyakit')
                    ->searchable()
                    ->preload(),
                TextInput::make('solusi')
                    ->label('Solusi')
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
                TextColumn::make('penyakit.nama_penyakit')
                    ->label('Nama Penyakit')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('solusi')
                    ->label('Solusi')
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
            'index' => Pages\ListSolusis::route('/'),
            'create' => Pages\CreateSolusi::route('/create'),
            'edit' => Pages\EditSolusi::route('/{record}/edit'),
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
