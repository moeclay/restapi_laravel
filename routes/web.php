<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function () {
    return view('welcome');
});


Route::get('hi', function(){
	return('Hallo Dunia !');
});

Route::get('submit', function(){
	return view('test/kirim');
});

Route::post('submit', function(){
	return Input::get('nama');
});

Route::get('user/{id}', function($id){
	return 'user : '.$id;
});

// view dasar
Route::get('pelajar', function(){
	return view('test/pelajar');
});

// tester helper
Route::get('/tes', 'ContohController@tes');
Route::get('/tes2', 'ContohController@tes2');

// controller crud
Route::get('/contoh', 'ContohController@index');
Route::get('/contoh_tambah', 'ContohController@create');
Route::post('/contoh_store', 'ContohController@store');
Route::get('/contoh_edit/{id}', 'ContohController@edit');
Route::post('/contoh_update/{id}', 'ContohController@update');
Route::get('/contoh_hapus/{id}', 'ContohController@destroy');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');