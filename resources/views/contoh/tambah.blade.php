@extends('template')

@section('content')
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-lg-12 mt-1">
				<div class="card card-body">
					<h4>POST</h4>
					<br>
					<form action="contoh_store" method="post">
						  {{ csrf_field() }}
						  <div class="form-group">
						    <label for="nama">Nama</label>
						    <input type="text" class="form-control" id="name" name="nama" placeholder="Nama Lengkap" required value="">
						  </div>
						  <div class="form-group">
						    <label for="jabatan">Jabatan</label>
						    <input type="text" class="form-control" id="jabatan" name="jabatan" placeholder="Jabatan" required value="">
						  </div>
						  <div class="form-group">
						    <label for="waktu">Waktu</label>
						    <input type="text" class="form-control" id="waktu" name="waktu" placeholder="Waktu" required value="">
						  </div>
						  <button type="submit" class="btn btn-primary">Kirim</button>
					</form>
				</div>
			</div>
		</div>
	</div>
@endsection