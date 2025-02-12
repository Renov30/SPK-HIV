<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Lahan extends Model
{
    //
    protected $fillable = [
        'nama',
        'slug',
        'hasil_produksi',
        'luas_lahan',
        'distrik_id',
        'alamat',
        'no_hp',
        'longitude',
        'latitude',
    ];

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = $value;
        $this->attributes['slug'] = Str::slug($value);
    }

    public function distrik(): BelongsTo
    {
        return $this->belongsTo(Distrik::class, 'distrik_id');
    }
}
