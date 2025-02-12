<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Distrik extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'nama',
        'slug',
        'luas_tanam',
        'luas_panen',
        'produksi',
        'produktivitas',
    ];

    public function setNameAttribute($value)
    {
        $this->attributes['nama'] = $value;
        $this->attributes['slug'] = Str::slug($value);
    }

    public function lahan(): HasMany
    {
        return $this->hasMany(Distrik::class);
    }
}
