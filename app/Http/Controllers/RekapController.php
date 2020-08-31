<?php

namespace App\Http\Controllers;

use App\Contoh;

use Session;

use Illuminate\Http\Request;
use App\Exports\ContohExport;
use App\Imports\ContohImport;
use Maatwebsite\Excel\Facades\Excel;

class RekapController extends Controller
{
    public function index(){
		$siswa = Contoh::all();
		return view('excell/siswa',['siswa'=>$siswa]);
	}

	public function export_excel(){
		return Excel::download(new ContohExport, 'siswa.xlsx');
	}

	public function import_excel(Request $request) 
	{
		// validasi
		$this->validate($request, [
			'file' => 'required|mimes:csv,xls,xlsx'
		]);

		// menangkap file excel
		$file = $request->file('file');

		// membuat nama file unik
		$nama_file = rand().$file->getClientOriginalName();

		// upload ke folder file_siswa di dalam folder public
		$file->move('public/file_siswa',$nama_file);

		// import data
		Excel::import(new ContohImport, public_path('/file_siswa/'.$nama_file));

		// notifikasi dengan session
		Session::flash('sukses','Data Siswa Berhasil Diimport!');

		// alihkan halaman kembali
		return redirect('/rekap');
	}

}
