<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HalloController extends Controller
{
    public function halo($nama){
    	return "Halo, " . $nama;
    }

    public function panggil(){
    	// call action route
    	echo "<a href='".action('HalloController@halo', ['nama' => 'Diki'])."'>Hallo User</a>";
    }
}

