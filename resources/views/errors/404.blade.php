@extends('template')

@section('content')
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-lg-12 text-center mt-5">
				<img id="foto" src="{{ asset('images/error404.svg') }}" alt="Images">
				<br>
				<h4 class="text-uppercase mt-3">Halaman tidak ditemukan.</h4>
				<p class="font-weight-bold"><a style="text-decoration: none;" href="{{ url('/') }}">back to home</a></p>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function(){
			console.log('error404 page');
		});
	</script>
@endsection