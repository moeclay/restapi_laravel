@extends('template')

@section('content')

	<div class="container mt-2">
		<div class="jumbotron">
			<h2>@lang('biodata.welcome')</h2>

			<p>@lang('biodata.title')</p>

			<form>
				<div class="form-group">
					<label>@lang('biodata.profil.name')</label>
					<input class="form-control" type="text" name="">
				</div>

				<div class="form-group">
					<label>@lang('biodata.profil.address')</label>
					<input class="form-control" type="text" name="">
				</div>

				<div class="form-group">
					<label>@lang('biodata.profil.hobby')</label>
					<input class="form-control" type="text" name="">
				</div>

				<div class="form-group">
					<label>@lang('biodata.profil.job')</label>
					<input class="form-control" type="text" name="">
				</div>

				<div class="form-group">
					<button class="btn btn-success">@lang('biodata.button')</button>
				</div>
			</form>

			<p>@lang('biodata.thank')</p>
		</div>
	</div>

@endsection