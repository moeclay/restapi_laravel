<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Telepon extends Model
{
    // table yg digunakan
    protected $table = "telepon";

    // memberi tahu, kalo model telepon terhubung dg model pengguna
    public function pengguna()
    {
    	return $this->belongsTo('App\Pengguna');
    }

}
