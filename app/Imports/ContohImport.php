<?php

namespace App\Imports;

use App\Contoh;
use Maatwebsite\Excel\Concerns\ToModel;

class ContohImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Contoh([
            'nama' => @$row[0],
            'jabatan' => @$row[1], 
            'waktu' => @$row[2],
        ]);
    }

    public function rules(): array{
        return [
            'nama' => 'required|string',
            'jabatan' => 'required|string',
            'waktu' => 'required|string',
        ];
    }
}
