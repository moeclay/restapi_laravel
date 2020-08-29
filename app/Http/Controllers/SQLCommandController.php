<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SQLCommandController extends Controller
{
    public function index(){
    	
        $result = DB::select("
        	SELECT 
        	a.id,
        	a.judul,
        	b.tag
        	FROM posts a
        	LEFT JOIN tags b
        	ON a.id = b.posts_id 
        	WHERE a.id = 3"
       	);
        echo json_encode($result);
    }
}
