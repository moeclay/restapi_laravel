<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class MahasiswaSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('id_ID');

        // membuat data dummy sebanyak 10 record
        for($x = 1; $x <= 2; $x++){

        	// insert data dummy pegawai dengan faker
        	DB::table('mahasiswa')->insert([
        		'nama' => $faker->name,
        		'nim'  => '12345',
        		'alamat' => $faker->address,
        		'created_at' => date('Y-m-d H:i:s')
        	]);

        }

    }
}
