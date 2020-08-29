<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;

class DikiController extends Controller
{
    public function index(){
    	$encrypted = Crypt::encryptString('Belajar Laravel Di malasngoding.com');
		$decrypted = Crypt::decryptString($encrypted);

		echo "Hasil Enkripsi : " . $encrypted;
		echo "<br/>";
		echo "<br/>";
		echo "Hasil Dekripsi : " . $decrypted;
    }

    public function data(){
    	$parameter =[
			'nama' => 'Diki Alfarabi Hadi',
			'pekerjaan' => 'Programmer',
		];
		$enkripsi= Crypt::encrypt($parameter);
		echo "<a href='/security/data/".$enkripsi."'>Klik</a>";
    }

    public function data_proses($data){
    	$data = Crypt::decrypt($data);
    	echo "Nama : " . $data['nama'];
		echo "<br/>";
		echo "Pekerjaan : " . $data['pekerjaan'];
    }

    // hash laravel
    public function hash(){
    	$hash_password_saya = Hash::make('hallo123');
    	echo $hash_password_saya;
    }

	public function validhash(){
    	$hash_password_saya = Hash::make('hallo123');
    	if(Hash::check('hallo123', $hash_password_saya)){
    		echo "password benar";
    	}else{
    		echo "password salah";
    	}
    }    
}
