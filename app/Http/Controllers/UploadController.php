<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Gambar;

class UploadController extends Controller
{
    public function upload(){
    	return view('upload/index');
    }

    public function proses_upload(Request $request){
    	$this->validate($request, [
			'file' => 'required',
			'keterangan' => 'required',
		]);

		// menyimpan data file yang diupload ke variabel $file
		$file = $request->file('file');

      	// nama file
		echo 'File Name: '.$file->getClientOriginalName();
		echo '<br>';

      	// ekstensi file
		echo 'File Extension: '.$file->getClientOriginalExtension();
		echo '<br>';

      	 // real path
		echo 'File Real Path: '.$file->getRealPath();
		echo '<br>';

      	// ukuran file
		echo 'File Size: '.$file->getSize();
		echo '<br>';

      	// tipe mime
		echo 'File Mime Type: '.$file->getMimeType();

      	// isi dengan nama folder tempat kemana file diupload
		$tujuan_upload = 'public/data_file';

        // upload file
		$file->move($tujuan_upload,$file->getClientOriginalName());
    }

    public function uploaddb(){
		$gambar = Gambar::orderBy('id','desc')->get();
		return view('upload/indexdb',['gambar' => $gambar]);
	}

	public function uploaddb_proses(Request $request){
		$this->validate($request, [
			'file' => 'required|file|image|mimes:jpeg,png,jpg|max:2048',
			'keterangan' => 'required',
		]);

		// menyimpan data file yang diupload ke variabel $file
		$file = $request->file('file');

		$nama_file = time()."_".$file->getClientOriginalName();

      	        // isi dengan nama folder tempat kemana file diupload
		$tujuan_upload = 'public/data_file';
		$file->move($tujuan_upload,$nama_file);

		Gambar::create([
			'file' => $nama_file,
			'keterangan' => $request->keterangan,
		]);

		return redirect()->back();
	}

}
