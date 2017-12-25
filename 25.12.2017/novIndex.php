<!DOCTYPE>
<html>
<head>
	<title>MFIS</title>
    <script src="script.js"></script>
  	
 	<meta charset="UTF-8"> 
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<link rel="stylesheet" type="text/css" href="css/styleGlavnaStran.css">
	<link rel="stylesheet" type="text/css" href="css/gumb.css">



</head>


<body onclick="koKliknes()" >
      <?php include 'povezava.php';      ?> <!-- povezava z bazo -->
  	<div id="log"></div>
	<form action="grade.php" method="post" id="quiz" name="neki">
		<?php echo '<p> EMSO: <input type="text" name="emso"  value="'.$_GET['emso'].'"></p>' ?>
		<?php echo '<p> IME: <input type="text" name="ime"  value="'.$_GET['ime'].'"></p>' ?>
		<?php echo '<p>DATUM:<input type="date" name="datum" value="'.$_GET['datum'] . '"> </p>' ?>
		<?php echo '<p>VPRASALNIK:<input type="text" id="vprasalnik" name="vprasalnik" value="'.$_GET['anketa'].'"  >  </p>' ?>
        <ol>
        	<li name="najdi" class="primerVprasanja" hidden>
        	</li>



<!-- IZPISI ANKETO: -->
<?php
mb_internal_encoding("UTF-8");
	// ----------------------------------------------------------------------------------------------------------------
	function izpisiEnoVprasanjeInOdgovore($idVprasanja='22'){
      	include 'povezava.php';
      	mb_internal_encoding("UTF-8");
		$sql = "SELECT * FROM odgovor o ,vprasanje v where o.id_vprasanje=v.id_vprasanje and o.id_vprasanje = $idVprasanja ";
		$result = $conn->query($sql);
		$result->num_rows;
		$row = $result->fetch_assoc();
		echo '<li name="najdi" class="primerVprasanja">';
		echo '<h3> [vprasanje text:] '. $row["vprasanje"] .  ' [id_vprasanje:'.$row["id_vprasanje"].'] </h3>  ';
		if ($result->num_rows > 0) {
		    	echo '<div>		<input type="radio" value="'. $row["id_odgovor"] . ' " name="' . $row["id_vprasanje"]. '" id="odgovor' . $row["id_odgovor"]. ' " />		<label> '. $row["opis"]  . ' [id_odgovor:' . $row["id_odgovor"] . ' vred: ' .$row["vrednost"] . '] </label>		</div>';

		    while($row = $result->fetch_assoc()) {
		    	echo '<div>		<input type="radio" value="'. $row["id_odgovor"] . ' " name="' . $row["id_vprasanje"]. '" id="odgovor' . $row["id_odgovor"]. ' " />		<label> '. $row["opis"]  . ' [id_odgovor:' . $row["id_odgovor"] . ' vred: ' .$row["vrednost"] .'] </label>		</div>';
		    }
		    echo '</li>';
		} else {
		    echo "error 0";
		}
	}
	// ----------------------------------------------------------------------------------------------------------------
	function izpisiVprasanjaInOdgovore($vprasalnik='%MSQOL-54%')
	{
      	include 'povezava.php';
		$sql = "SELECT * from vprasalnik v, vprasanje v1,kategorija k where v.id_vprasalnik=v1.id_vprasalnika AND v1.id_kategorije=k.id_kategorija and naslov like '%$vprasalnik%' ORDER BY `v1`.`id_vprasanje`";
		$rez = $conn->query($sql);
		if ($rez->num_rows > 0) {
		    while($row = $rez->fetch_assoc()) {
		    	echo "</br>";
		    	izpisiEnoVprasanjeInOdgovore($row["id_vprasanje"]);
		    } 
		}
		else{
			echo "error 1";
		}
	}
	$vprasalnik = $_GET['anketa'];

	izpisiVprasanjaInOdgovore("%". $vprasalnik. "%");
	
// -----------------------------------
function neki($vprasalnik='%MSQOL-54%')
	{
      	include 'povezava.php';
		$sql = "SELECT count(*) from vprasalnik v, vprasanje v1,kategorija k where v.id_vprasalnik=v1.id_vprasalnika AND v1.id_kategorije=k.id_kategorija and naslov like '%". $vprasalnik."%'";
		$rez = $conn->query($sql);
		if ($rez->num_rows > 0) {
		    while($row = $rez->fetch_assoc()) {
		    	echo "</br>";
		    	echo '<div id="steviloVsehVprasanj" hidden>'  . $row["count(*)"] . '</div>';
		    } 
		}
		else{
			echo "error 1";
		}
	}


neki($vprasalnik);

?> 
</script>
  			</ol>
        	<button type="submit" value="Submit" disabled id="oddajOdgovoreGumb" onclick="CheckTextbox()" >	Najpej odgovori na vsa vprašanja			</button>   	

	</form>

<script type="text/javascript">
function koKliknes(){
		var vsi = "";
		var oznaceni = [];;
		$('input[type=radio]').each(function () {
    		if (this.checked){
    			oznaceni.push($(this).val());
    		}
		});
		console.log(oznaceni);
		console.log("stevilo oznacenih= " + oznaceni.length );
		console.log("stevilo vseh = " + document.getElementById('steviloVsehVprasanj').innerHTML);

		var el = document.getElementById('steviloVsehVprasanj');
		if(oznaceni.length == document.getElementById('steviloVsehVprasanj').innerHTML){
			console.log("JUPI");
			document.getElementById('oddajOdgovoreGumb').disabled = false;
			document.getElementById("oddajOdgovoreGumb").innerHTML = "Pošlji odgovore";
		}
		else{
			document.getElementById("oddajOdgovoreGumb").innerHTML = "Najpej odgovori na vsa vprašanja";
		}
		return oznaceni;
}

</script>



</body>
</html>