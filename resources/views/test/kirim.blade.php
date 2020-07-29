<!DOCTYPE html>
<html>
<head>
	<title>Form POST Laravel</title>
</head>
<body>
	<form action='submit' method='post'>
		{{ csrf_field() }}
		<input type='text' name='nama' />
		<input type='submit' value='Post data' />
	</form>
</body>
</html>