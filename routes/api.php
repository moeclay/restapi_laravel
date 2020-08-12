<?php

use Illuminate\Http\Request;
use App\Article;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


// ----------------------------------------------
// original
// Route::get('articles', function(){
// 	return Article::all();
// });

// Route::get('articles/{id}', function($id){
// 	return Article::find($id);
// });

// Route::post('articles', function(Request $request){
// 	// $data = $request->all();
// 	// return Article::create([
// 	// 	'title' => $data['title'],
// 	// 	'body'  => $data['body'],
// 	// ]);
// 	return Article::create($request->all());
// });

// Route::put('articles/{id}', function(Request $request, $id){
// 	$article = Article::findOrFail($id);
// 	$article->update($request->all());
// 	return $article;
// });

// Route::delete('article/{id}', function($id){
// 	Article::find($id)->delete();
// 	return 204;
// });

// with controller
// Route::get('articles', 'ArticleController@index');
// Route::post('/articles', 'ArticleController@store');
// Route::put('articles/{article}', 'ArticleController@update');
// Route::delete('articles/{article}', 'ArticleController@delete');


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// route articles
Route::middleware('auth:api')->get('/articles', 'ArticleController@index');
Route::middleware('auth:api')->get('/articles/{article}', 'ArticleController@show');
Route::middleware('auth:api')->post('/articles', 'ArticleController@store');
Route::middleware('auth:api')->put('/articles/{article}', 'ArticleController@update');
Route::middleware('auth:api')->delete('/articles/{article}', 'ArticleController@delete');


// ongkir api
Route::middleware('auth:api')->get('/getprovinsi', 'OngkirController@index');
Route::middleware('auth:api')->get('/getkota', 'OngkirController@getkota');
Route::middleware('auth:api')->get('/getkota/{idprovinsi}', 'OngkirController@getkotaidprovinsi');
Route::middleware('auth:api')->get('/getkecamatan/{idkota}', 'OngkirController@getkecamatanidkota');

// /getbiaya/2477/2478/1/jne
Route::middleware('auth:api')->get('/getbiaya/{origin}/{destination}/{weight}/{courier}', 'OngkirController@getbiaya');
