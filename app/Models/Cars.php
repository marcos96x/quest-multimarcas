<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cars extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'nome_veiculo',
        'hash_veiculo',
        'link',
        'valor',
        'foto',
        'ano',
        'quilometragem',
        'combustivel',
        'cambio',
        'portas',
        'cor',
    ];
}
