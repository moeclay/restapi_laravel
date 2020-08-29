<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FormValidController extends Controller
{
    public function input(){
    	return view('valid/input');
    }

    public function proses(Request $request){
    	// pesan message validation
    	$messages = [
		    'required' => ':attribute wajid diisi',
		    'min' => ':attribute harus diisi minimal :min karakter',
		    'max' => ':attribute harus diisi maksimal :max karakter',
		];

    	$this->validate($request,[
           'nama' => 'required|min:5|max:20',
           'pekerjaan' => 'required',
           'usia' => 'required|numeric'
        ], $messages);

        return view('valid/proses',['data' => $request]);
    }
}

/*
validation form pada laravel
- require
- min:10
- max:10
- alpha
- numeric
- alpha_num
- bail (berhenti memvalidasi jika valid sebelumnya error)
- email
*/