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

// cari crud
Route::get('/contoh/cari','ContohController@cari');

// route auth user
Route::group(['prefix' => 'admin'], function(){
    Auth::routes();
});

Route::get('/home', 'HomeController@index')->name('home');

// validate form
Route::get('/valid/input', 'FormValidController@input');
Route::post('/valid/proses', 'FormValidController@proses');

// eloquent
Route::get('/eloquent/mahasiswa', 'MahasiswaController@index');
Route::get('/eloquent/mahasiswa/tambah', 'MahasiswaController@tambah');
Route::post('/eloquent/mahasiswa/store', 'MahasiswaController@store');

Route::get('/eloquent/mahasiswa/edit/{id}', 'MahasiswaController@edit');
Route::put('/eloquent/mahasiswa/update/{id}', 'MahasiswaController@update');

Route::get('/eloquent/mahasiswa/hapus/{id}', 'MahasiswaController@hapus');

// soft delete
Route::get('/eloquent/mahasiswa/trash', 'MahasiswaController@trash');
Route::get('/eloquent/mahasiswa/kembalikan/{id}', 'MahasiswaController@kembalikan');
Route::get('/eloquent/mahasiswa/kembalikan_semua', 'MahasiswaController@kembalikan_semua');
Route::get('/eloquent/mahasiswa/hapus_permanen/{id}', 'MahasiswaController@hapus_permanen');
Route::get('/eloquent/mahasiswa/hapus_permanen_semua', 'MahasiswaController@hapus_permanen_semua');

// one to one
Route::get('/oto/pengguna', 'PenggunaController@index');

// one to many
Route::get('/otm/posts', 'PostController@index');

// many to many
Route::get('/mtm/anggota', 'AnggotaController@index');

// query custom
Route::get('/query_custom', 'SQLCommandController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

// encry_decry
Route::get('/security/enc', 'DikiController@index');
Route::get('/security/data', 'DikiController@data');
Route::get('/security/data/{data_rahasia}', 'DikiController@data_proses');

// hash
Route::get('/security/hash','DikiController@hash');
Route::get('/security/validhash','DikiController@validhash');

// upload file
Route::get('/upload', 'UploadController@upload');
Route::post('/upload/proses', 'UploadController@proses_upload');

// upload file db
Route::get('/uploaddb', 'UploadController@uploaddb');
Route::post('/uploaddb/proses', 'UploadController@uploaddb_proses');

// laporan dompdf
Route::get('/laporan', 'LaporanController@index');
Route::get('/laporan/cetak_pdf', 'LaporanController@cetak_pdf');

// export excell
Route::get('/rekap', 'RekapController@index');
Route::get('/rekap/export_excel', 'RekapController@export_excel');
Route::post('/rekap/import_excel', 'RekapController@import_excel');

// localization default
Route::get('/form', function () {
    return view('bahasa/biodata');
});

// localization pilih bahasa
Route::get('/{locale}/form', function ($locale) {
    App::setLocale($locale);
    return view('bahasa/biodata');
});

// action url
Route::get('halo/{nama}', 'HalloController@halo');
Route::get('halo', 'HalloController@panggil');