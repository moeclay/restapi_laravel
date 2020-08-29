<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Posts;

class PostController extends Controller
{
    public function index(){
   	 	$artikel = Posts::all();
    	return view('otm/posts',['artikel' => $artikel]);
   	}

}
