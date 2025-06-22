<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Gejala extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'nama_gejala',
    ];

    public function relasi(): HasMany
    {
        return $this->hasMany(Relasi::class, 'gejala_id');
    }
    public function penyakits(): BelongsToMany
    {
        return $this->belongsToMany(
            Penyakit::class,
            'relasis',
            'gejala_id',
            'penyakit_id'
        )->withTimestamps();
    }
}
