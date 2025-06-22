<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Penyakit extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'nama_penyakit',
    ];

    public function solusi(): HasMany
    {
        return $this->hasMany(Solusi::class, 'penyakit_id');
    }
    public function relasi(): HasMany
    {
        return $this->hasMany(Relasi::class, 'penyakit_id');
    }
    public function gejalas(): BelongsToMany
    {
        return $this->belongsToMany(
            Gejala::class,
            'relasis',
            'penyakit_id',
            'gejala_id'
        )->withTimestamps();
    }
}
