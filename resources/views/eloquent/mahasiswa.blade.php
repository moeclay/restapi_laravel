<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Tutorial Laravel #21 : CRUD Eloquent Laravel</title>
    </head>
    <body>
        <div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    CRUD Data Mahasiswa
                </div>
                <div class="card-body">
                    <a href="/eloquent/mahasiswa/tambah" class="btn btn-primary btn-sm">Input Mahasiswa Baru</a>  
                    <a href="/eloquent/mahasiswa/trash" class="btn btn-warning btn-sm">Data Trash</a>
                    <br/>
                    <br/>
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                            <tr>
                                <th>Nama</th>
                                <th>Nim</th>
                                <th>Alamat</th>
                                <th>OPSI</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($mahasiswa as $p)
                            <tr>
                                <td>{{ $p->nama }}</td>
                                <td>{{ $p->nim }}</td>
                                <td>{{ $p->alamat }}</td>
                                <td>
                                    <a href="/eloquent/mahasiswa/edit/{{ $p->id }}" class="btn btn-sm btn-warning">Edit</a>
                                    <a onclick="return confirm('Yakin ingin dihapus?')" href="/eloquent/mahasiswa/hapus/{{ $p->id }}" class="btn btn-sm btn-danger">Hapus</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <hr>
                    {{ $mahasiswa->links() }}
                </div>
            </div>
        </div>
    </body>
</html>