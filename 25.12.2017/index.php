<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" type="text/css" href="css/styleGlavnaStran.css">
</head>
<body>

<form action="./novIndex.php" >
	Emšo:*<br>
	<input type="number" name="emso" value="" required><br><br>
	Ime:<br>
	<input type="text" name="ime" value=""> <br><br>
	Datum:*</br>
	<input type="date" name="datum" id="datum" required ><br><br>
	Anketa:*</br>
	<select name="anketa" required>
  		<option value="MSQOL-54">MSQOL-54</option>
  		<option value="MFIS">MFIS</option>
	</select>
  	<input type="submit" value="Naprej ->">
</form> 
<script type="text/javascript">
	document.getElementById('datum').valueAsDate = new Date();
</script>

</body>
</html>
