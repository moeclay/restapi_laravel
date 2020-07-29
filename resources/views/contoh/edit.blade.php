@extends('template')

@section('content')
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-lg-12 mt-1">
				<div class="card card-body">
					<h4>EDIT</h4>
					<br>
					<form action="/contoh_update/{{ $berita->id }}" method="post">
						  {{ csrf_field() }}
						  <div class="form-group">
						    <label for="nama">Nama</label>
						    <input type="text" class="form-control" id="name" name="nama" value="{{ $berita->nama }}" required>
						  </div>
						  <div class="form-group">
						    <label for="jabatan">Jabatan</label>
						    <input type="text" class="form-control" id="jabatan" name="jabatan" value="{{ $berita->jabatan }}" required>
						  </div>
						  <div class="form-group">
						    <label for="waktu">Waktu</label>
						    <input type="text" class="form-control" id="waktu" name="waktu" value="{{ $berita->waktu }}" required>
						  </div>
						  <button type="submit" class="btn btn-primary">Update</button>
					</form>
				</div>
			</div>
		</div>
	</div>
@endsection