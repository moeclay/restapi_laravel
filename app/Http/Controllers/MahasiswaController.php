<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mahasiswa;
class MahasiswaController extends Controller
{
    public function index(){
    	// $mahasiswa = Mahasiswa::all();
    	$mahasiswa = Mahasiswa::orderBy('id','desc')->paginate(5);
    	return view('eloquent/mahasiswa', ['mahasiswa' => $mahasiswa]);
    }

    public function tambah(){
    	return view('eloquent/tambah');
    }

    public function store(Request $request){
    	$this->validate($request,[
    		'nama' => 'required',
    		'nim' => 'required',
    		'alamat' => 'required'
    	]);

    	// wajib ubah model, isi properties fillable
        Mahasiswa::create([
    		'nama' => $request->nama,
    		'nim' => $request->nim,
    		'alamat' => $request->alamat
    	]);

    	return redirect('/eloquent/mahasiswa');
    }

    public function edit($id){
    	$mahasiswa = Mahasiswa::find($id);
   		return view('eloquent/edit', ['mahasiswa' => $mahasiswa]);
    }

    public function update($id, Request $request){
    	$this->validate($request,[
		   'nama' => 'required',
		   'nim' => 'required',
		   'alamat' => 'required'
	    ]);

	    $mahasiswa = Mahasiswa::find($id);
	    $mahasiswa->nama = $request->nama;
	    $mahasiswa->nim = $request->nim;
	    $mahasiswa->alamat = $request->alamat;
	    $mahasiswa->save();
	    return redirect('/eloquent/mahasiswa');
    }

    public function hapus($id){
    	$mahasiswa = Mahasiswa::find($id);
	    $mahasiswa->delete();
	    return redirect('/eloquent/mahasiswa');
    }

    public function trash(){
    	$mahasiswa = Mahasiswa::onlyTrashed()->get();
    	return view('eloquent/trash', ['mahasiswa' => $mahasiswa]);
    }

    public function kembalikan($id){
    	$mahasiswa = Mahasiswa::onlyTrashed()->where('id', $id);
    	$mahasiswa->restore();
    	return redirect('/eloquent/mahasiswa');
    }

    public function kembalikan_semua(){
    	$mahasiswa = Mahasiswa::onlyTrashed();
    	$mahasiswa->restore();

    	return redirect('/eloquent/mahasiswa/trash');
	}

	public function hapus_permanen($id){
    	// hapus permanen data guru
    	$mahasiswa = Mahasiswa::onlyTrashed()->where('id',$id);
    	$mahasiswa->forceDelete();

    	return redirect('/eloquent/mahasiswa/trash');
	}

	public function hapus_permanen_semua(){
    	// hapus permanen data guru
    	$mahasiswa = Mahasiswa::onlyTrashed();
    	$mahasiswa->forceDelete();

    	return redirect('/eloquent/mahasiswa/trash');
	}
}
