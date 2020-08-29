<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{
	protected $table = "posts";
    public function tags(){
    	return $this->hasMany('App\Tags');
    }
}
