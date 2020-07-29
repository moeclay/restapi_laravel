<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class ArticleController extends Controller
{
    public function index()
    {
        $article = Article::all();
        $data = array(
            'code' => 200,
            'data' => $article
        );
        return response()->json($data, 200);
    }
 
    public function show(Article $article)
    {
        $data = array(
            'code' => 200,
            'data' => $article
        );
        return response()->json($data, 200);
    }

    public function store(Request $request)
    {
        $article = Article::create($request->all());
        $data = array(
            'code' => 201,
            'data' => $article
        );
        return response()->json($data, 200);
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
