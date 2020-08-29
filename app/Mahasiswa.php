<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Mahasiswa extends Model
{
	use SoftDeletes;

    // table
    protected $table = "mahasiswa";

    // mass asignment
    protected $fillable = ['nama','nim','alamat'];

    // soft delete
    protected $dates = ['deleted_at'];

}
