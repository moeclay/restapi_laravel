<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ongkir;

class OngkirController extends Controller
{
	// getprovinsi
    public function index(Request $request){
        $data = $request->user();
        $is_active = $data['is_active'];
        if($is_active === 'true'){
        	$ongkir_url = env('ONGKIR_URL');
        	$ongkir_key = env('ONGKIR_KEY');

        	// api get provinsi
        	$url = $ongkir_url."province?id=";
			$ops = [
			    'http' => [
			        'header'  => "key: ".$ongkir_key,
			        'method'  => 'GET'
			    ]
			];
			$con = stream_context_create($ops);
			$hasil = file_get_contents($url, false, $con);
			$oi =  json_decode($hasil);

        	if($oi->rajaongkir->status->code == '200'){
			    $datares = array(
	        		'code' => 200,
	        		'data' => $oi->rajaongkir->results,
	        	);
			}else{
				$datares = array(
	        		'code' => 523,
	        		'data' => 'Error di API RajaOngkir',
	        	);
			}
        }else{
        	$datares = array(
        		'code' => 401,
        		'data' => 'akses ditolak',
        	);
        }
        return response()->json($datares, 200);
    }

    // getkota
    public function getkota(Request $request){
    	$data = $request->user();
    	$is_active = $data['is_active'];

    	if($is_active === 'true'){
    		$ongkir_url = env('ONGKIR_URL');
        	$ongkir_key = env('ONGKIR_KEY');

        	// api get provinsi
        	$url = $ongkir_url."city";
			$ops = [
			    'http' => [
			        'header'  => "key: ".$ongkir_key,
			        'method'  => 'GET'
			    ]
			];
			$con = stream_context_create($ops);
			$hasil = file_get_contents($url, false, $con);
			$oi =  json_decode($hasil);

        	if($oi->rajaongkir->status->code == '200'){
			    $datares = array(
	        		'code' => 200,
	        		'data' => $oi->rajaongkir->results,
	        	);
			}else{
				$datares = array(
	        		'code' => 523,
	        		'data' => 'Error di API RajaOngkir',
	        	);
			}
    	}else{
    		$datares = array(
        		'code' => 401,
        		'data' => 'akses ditolak',
        	);
    	}
    	return response()->json($datares, 200);
    }

    public function getkotaidprovinsi(Request $request){
    	$data = $request->user();
    	$is_active = $data['is_active'];

    	if($is_active === 'true'){
    		$ongkir_url = env('ONGKIR_URL');
        	$ongkir_key = env('ONGKIR_KEY');

        	// api get provinsi
        	$url = $ongkir_url."city?province=".$request->idprovinsi;
			$ops = [
			    'http' => [
			        'header'  => "key: ".$ongkir_key,
			        'method'  => 'GET'
			    ]
			];
			$con = stream_context_create($ops);
			$hasil = file_get_contents($url, false, $con);
			$oi =  json_decode($hasil);

        	if($oi->rajaongkir->status->code == '200'){
			    $datares = array(
	        		'code' => 200,
	        		'data' => $oi->rajaongkir->results,
	        	);
			}else{
				$datares = array(
	        		'code' => 523,
	        		'data' => 'Error di API RajaOngkir',
	        	);
			}
    	}else{
    		$datares = array(
        		'code' => 401,
        		'data' => 'akses ditolak',
        	);
    	}
    	return response()->json($datares, 200);
    }

    public function getkecamatanidkota(Request $request){
    	$data = $request->user();
    	$is_active = $data['is_active'];

    	if($is_active === 'true'){
    		$ongkir_url = env('ONGKIR_URL');
        	$ongkir_key = env('ONGKIR_KEY');

        	// api get provinsi
        	$url = $ongkir_url."subdistrict?city=".$request->idkota;
			$ops = [
			    'http' => [
			        'header'  => "key: ".$ongkir_key,
			        'method'  => 'GET'
			    ]
			];
			$con = stream_context_create($ops);
			$hasil = file_get_contents($url, false, $con);
			$oi =  json_decode($hasil);

        	if($oi->rajaongkir->status->code == '200'){
			    $datares = array(
	        		'code' => 200,
	        		'data' => $oi->rajaongkir->results,
	        	);
			}else{
				$datares = array(
	        		'code' => 523,
	        		'data' => 'Error di API RajaOngkir',
	        	);
			}
    	}else{
    		$datares = array(
        		'code' => 401,
        		'data' => 'akses ditolak',
        	);
    	}
    	return response()->json($datares, 200);
    }

    // 3service: jne, pos, tiki
    public function getbiaya(Request $request){
    	$data = $request->user();
    	$is_active = $data['is_active'];

    	if($is_active === 'true'){
    		$ongkir_url = env('ONGKIR_URL');
        	$ongkir_key = env('ONGKIR_KEY');

        	// api get provinsi
        	$datapost = http_build_query(
		        array(
		        'origin' => $request->origin,
		        'originType' => 'subdistrict',
		        'destination' => $request->destination,
		        'destinationType' => 'subdistrict',
		        'weight' => $request->weight,
		        'courier' => $request->courier)
		    );

        	$url = $ongkir_url."cost";
			$ops = [
			    'http' => [
			        'header'  => array(
			        	"key: ".$ongkir_key,
			        	"Content-Type: application/x-www-form-urlencoded"
			        ),
			        'method'  => 'POST',
            		'content' => $datapost
			    ],
			];
			$con = stream_context_create($ops);
			$hasil = file_get_contents($url, false, $con);
			$oi =  json_decode($hasil);

        	if($oi->rajaongkir->status->code == '200'){
			    $datares = array(
	        		'code' => 200,
	        		'data' => $oi->rajaongkir->results,
	        	);
			}else{
				$datares = array(
	        		'code' => 523,
	        		'data' => 'Error di API RajaOngkir',
	        	);
			}
    	}else{
    		$datares = array(
        		'code' => 401,
        		'data' => 'akses ditolak',
        	);
    	}
    	return response()->json($datares, 200);
    }
}
