<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\User;
use App\Helpers\Fungsi;

class UserController extends Controller
{
    public function store(Request $request){
    	// use helper for check email exists
    	$helper = new Fungsi();

    	// $name = $request->input('name');
    	// $email = $request->input('email');
    	// $password = $request->input('password');
    	
    	$vd = $request->validate([
	        'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255',
            'password' => 'required|string|min:6',
	    ]);

    	if($helper->check_email($vd['email']) === 'false'){
    		User::create([
	            'name' => $vd['name'],
	            'email' => $vd['email'],
	            'password' => bcrypt($vd['password']),
	            'api_token' => Str::random(60),
	        ]);

	    	$datares = array(
	    		'code' => 201,
	    		'status' => 'create',
	    		'data' => array(
	    			'name' => $vd['name'],
	    			'email' => $vd['email'],
	    		),
	    	);
    	}else{
    		$datares = array(
	    		'code' => 200,
	    		'status' => 'created',
	    		'data' => 'user been created!'
	    	);
    	}
    	
        return response()->json($datares, 200);
    }
}
