<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
    // table yg digunakan
    protected $table = "pengguna";

    // memberi tau table pengguna memiliki relasi 1 table 'telepon'
    public function telepon()
    {
    	return $this->hasOne('App\Telepon');
    }
}
