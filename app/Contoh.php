<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contoh extends Model
{
    protected $fillable = ['nama','jabatan','waktu'];
    protected $table = 'berita';
}
