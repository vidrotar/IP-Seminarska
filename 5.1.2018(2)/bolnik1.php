<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="css/styleGlavnaStran.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/gumb.css">
	 <title>Podatki o bolniku(bolnik)</title>

</head>
<body>

<form action="./bolnik2.php" >
	Emšo:*<br>
	<input type="number" name="emso" value="" required><br><br>
	Ime:<br>
	<input type="text" name="ime" value=""> <br><br>
	Datum:*</br>
	<input type="date" name="datum" id="datum" required ><br><br>
	Anketa:*</br>
	<select name="anketa" required>
  		<option value="MFIS">MFIS</option>
  		<option value="MSQOL-54">MSQOL-54</option>

	</select>
  	<input type="submit" value="Naprej ->">
</form> 
<script type="text/javascript">
	document.getElementById('datum').valueAsDate = new Date();
</script>
<footer style="position: absolute;bottom: 0px">Aplikacija je še v razvoju in je namenjena testiranju. Na spletni strani ne uporabljajte nobenih osebnih podatkov.</footer>

</body>
</html>
