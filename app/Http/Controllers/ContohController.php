<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contoh;
use App\Helpers\Fungsi;

class ContohController extends Controller
{
    public function index(){
    	
        $berita = Contoh::orderBy('created_at','desc')->paginate(4);
        return view('contoh/index',['berita' => $berita]);
    }

    public function create(){
    	return view('contoh/tambah');
    }

    public function store(Request $request){
    	$post = new Contoh();
    	$post->nama = $request->input('nama');
    	$post->jabatan = $request->input('jabatan');
    	$post->waktu = $request->input('waktu');
    	$post->save();

    	return redirect('contoh')->with('tambah','Berhasil di tambah');
    }


    public function edit($id){
    	$berita = Contoh::find($id);
        return view('contoh/edit', ['berita' => $berita]);
    }

    public function update(Request $request, $id){
    	$post = Contoh::find($id);
        $post->nama = $request->input('nama');
        $post->jabatan = $request->input('jabatan');
        $post->waktu = $request->input('waktu');
        $post->save();

        return redirect('contoh')->with('ubah','Berhasil di ubah');
    }

    public function destroy($id){
    	$berita = Contoh::find($id);
        $berita->delete();
        return redirect('contoh')->with('pesan','Berhasil dihapus');
    }

    public function tes(){
        $user = new Fungsi();
        echo $user->hallo();
        echo "<br>";
        echo Fungsi::rupiahFormat(240500);
        echo "<br>";
        echo "Username: ".Fungsi::get_username(1);
    }

    public function tes2(Request $request){
        $email = $request->input('email');

        $nama = Fungsi::get_validation($email);
        $data = array(
            'code' => 200,
            'data' => $nama
        );
        return response()->json($data, 200);
    }
}
