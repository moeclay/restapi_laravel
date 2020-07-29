@extends('template')

@section('content')
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-lg-12 mt-1">
				<div class="card card-body">
					<p><a href="{{ url('contoh_tambah') }}" class="btn btn-primary">Tambah</a></p>
					<br>
					
					@if($message = Session::get('tambah'))
					<div class="alert alert-info alert-block">
						<strong>{{ $message }}</strong>
					</div>
					@endif

					@if($message = Session::get('pesan'))
					<div class="alert alert-danger alert-block">
						<strong>{{ $message }}</strong>
					</div>
					@endif

					@if($message = Session::get('ubah'))
					<div class="alert alert-success alert-block">
						<strong>{{ $message }}</strong>
					</div>
					@endif

					<table class="table">
						<thead class="thead-dark">
							<tr align="center">
								<th scope="col">No</th>
								<th scope="col">Nama</th>
								<th scope="col">Jabatan</th>
								<th scope="col">Waktu</th>
								<th colspan="2">Opsi</th>
							</tr>
						</thead>
						<tbody>
							
							@php $no = 1; @endphp
							@foreach($berita as $item)
							<tr align="center">
								<td>{{ $no++ }}</td>
								<td>{{ $item->nama }}</td>
								<td>{{ $item->jabatan }}</td>
								<td>{{ $item->waktu }}</td>
								<td>
									<a class="btn btn-sm btn-primary" href="{{ url('contoh_edit',['id' => $item->id]) }}">Edit</a>
									<a class="btn btn-sm btn-danger" href="{{ url('contoh_hapus',['id' => $item->id]) }}" onclick="return confirm('Yakin di Hapus?')">Hapus</a>
								</td>
							</tr>
							@endforeach

						</tbody>
					</table>

					{{ $berita->links('pagination::bootstrap-4') }}
				</div>
			</div>
		</div>
	</div>
@endsection