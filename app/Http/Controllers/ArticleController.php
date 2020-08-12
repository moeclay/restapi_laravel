<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;
use App\Helpers\Fungsi;

class ArticleController extends Controller
{
    public function index(Request $request)
    {
        $data = $request->user();
        $is_active = $data['is_active'];

        if($is_active === 'true'){
            $article = Article::all();
            $datares = array(
                'code' => 200,
                'data' => $article
            );
        }else{
            $datares = array(
                'code' => 401,
                'data' => 'akses ditolak',
            );
        }
        
        return response()->json($datares, 200);
    }
 
    public function show(Request $request, Article $article)
    {
        $data = $request->user();
        $is_active = $data['is_active'];
        if($is_active === 'true'){
            $datares = array(
                'code' => 200,
                'data' => $article,
            );
        }else{
            $datares = array(
                'code' => 401,
                'data' => 'akses ditolak',
            );   
        }
        return response()->json($datares, 200);
    }

    public function store(Request $request)
    {
        $data = $request->user();
        $is_active = $data['is_active'];
        if($is_active === 'true'){
            $article = Article::create($request->all());
            $datares = array(
                'code' => 201,
                'data' => $article
            );
        }else{
            $datares = array(
                'code' => 401,
                'data' => 'akses ditolak',
            );   
        }
        return response()->json($datares, 200);
    }

    public function update(Request $request, Article $article)
    {
    	$article->update($request->all());
        $data = array(
            'code' => 200,
            'data' => $article
        );
    	return response()->json($data, 200);
    }

    public function delete(Article $article)
    {
        $article->delete();
        $data = array(
            'code' => 204,
            'data' => 'data telah dihapus',
        );
        return response()->json($data, 200);
    }
}
