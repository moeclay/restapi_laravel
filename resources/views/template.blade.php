<?php
date_default_timezone_set('Asia/Jakarta');
?>
<!DOCTYPE html>
<html>
<head>
	<title>RestAPI</title>
	<link rel="stylesheet" type="text/css" href="{{ asset('public/dist/css/bootstrap.min.css') }}">
	<script type="text/javascript" src="{{ asset('public/js/jquery.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('public/dist/js/bootstrap.min.js') }}"></script>
</head>
<body>
	@yield('content')
</body>
</html>