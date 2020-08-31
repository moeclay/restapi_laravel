<?php

namespace App\Exports;

use App\Contoh;
use Maatwebsite\Excel\Concerns\FromCollection;

class ContohExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Contoh::all();
    }
}
