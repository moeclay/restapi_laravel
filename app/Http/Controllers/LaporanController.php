<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contoh;
use PDF;

class LaporanController extends Controller
{
    public function index(){
    	$pegawai = Contoh::all();
    	return view('dompdf/pegawai',['pegawai'=>$pegawai]);
    }

    public function cetak_pdf(){
    	$pegawai = Contoh::all();

    	$pdf = PDF::loadview('dompdf/pegawai_pdf',['pegawai'=>$pegawai]);

    	// mendownload file pdf otomatis
    	// return $pdf->download('laporan-pegawai-pdf');

    	// jika ingin menampilkan ke browser
    	return $pdf->stream();
    }

}
