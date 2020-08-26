@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="panel panel-default" style="padding: 5px;">
                <p>
                <b>User:</b> {{ Auth::user()->name }} <br>
                <b>Status:</b> {{ Auth::user()->is_active }} <br>
                <b>Token:</b> {{ Auth::user()->api_token }}
                </p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 col-lg-3">
            <div class="panel panel-default text-center">
                <a style="text-decoration: none;" href="{{ url('api_ongkir') }}"><div class="panel-heading">Ongkir API</div></a>
            </div>
        </div>

        <div class="col-md-3 col-lg-3">
            <div class="panel panel-default text-center">
                <a style="text-decoration: none;" href="{{ url('api_layout') }}"><div class="panel-heading">Layout API</div></a>
            </div>
        </div>
    </div>
</div>
@endsection
