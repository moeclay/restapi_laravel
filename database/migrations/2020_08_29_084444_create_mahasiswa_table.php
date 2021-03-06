<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMahasiswaTable extends Migration
{
    public function up()
    {
        Schema::create('mahasiswa', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama');
            $table->integer('nim');
            $table->text('alamat');
            $table->timestamps();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('mahasiswa');
    }
}
