<?php

namespace App\Helpers;
use Illuminate\Support\Facades\DB;

class Fungsi {

	// rupiahFormat
	public static function rupiahFormat($amount = 0){
		return 'Rp. '.number_format(intval($amount), 0, '','.').',-';
	}

	public static function hallo(){
		return 'Hallo hallo';
	}

	// get username
	public static function get_username($user_id){
		$user = DB::table('users')->where('id', $user_id)->first();
		return (isset($user->name) ? $user->name : '');
	}

	public static function get_validation($email_param){
		$user = DB::table('users')->where('email', $email_param)->where('is_active',true)->first();

		if(isset($user->email) && ($user->is_access == 'member')){
			$data = array(
				'is_active' => $user->is_active,
				'email' => $user->email,
				'name'  => $user->name,
				'api_token' => $user->api_token,
			);
		}else{
			$data = null;
		}		

		return $data;
	}
}