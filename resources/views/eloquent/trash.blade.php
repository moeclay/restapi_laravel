<html>
<head>
	<title>Tutorial Laravel #22 : Soft Deletes Laravel</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>
<body>

	<div class="container">

		<div class="card mt-5">
			<div class="card-header text-center">
				Data Mahasiswa
			</div>
			<div class="card-body">

				<a href="/eloquent/mahasiswa" class="btn btn-primary btn-sm">Data Mahasiswa</a>
				|
				<a href="/eloquent/mahasiswa/trash" class="btn btn-sm btn-warning">Data Trash</a>

				<br/>
				<br/>

				<a href="/eloquent/mahasiswa/kembalikan_semua">Kembalikan Semua</a>
				|
				<a href="/eloquent/mahasiswa/hapus_permanen_semua">Hapus Permanen Semua</a>
				<br/>
				<br/>

				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Nama</th>
							<th>Nim</th>
							<th>Alamat</th>
							<th width="30%">OPSI</th>
						</tr>
					</thead>
					<tbody>
						@foreach($mahasiswa as $g)
						<tr>
							<td>{{ $g->nama }}</td>
							<td>{{ $g->nim }}</td>
							<td>{{ $g->alamat }}</td>
							<td>
								<a href="/eloquent/mahasiswa/kembalikan/{{ $g->id }}" class="btn btn-success btn-sm">Restore</a>
								<a href="/eloquent/mahasiswa/hapus_permanen/{{ $g->id }}" class="btn btn-danger btn-sm">Hapus Permanen</a>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>