<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Relasi extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'gejala_id',
        'penyakit_id',
    ];

    public function gejala(): BelongsTo
    {
        return $this->belongsTo(Gejala::class, 'gejala_id');
    }

    public function penyakit(): BelongsTo
    {
        return $this->BelongsTo(Penyakit::class, 'penyakit_id');
    }
}
