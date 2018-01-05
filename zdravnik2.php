<!DOCTYPE>
<html>
<head>
	<title>MFIS</title>
    <script src="script.js"></script>
  	
 	<meta charset="UTF-8"> 
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<link rel="stylesheet" type="text/css" href="css/styleGlavnaStran.css">
	<link rel="stylesheet" type="text/css" href="css/gumb.css">
	<title>Obrazec(zdravnik)</title>


</head>
<?php 
  function pisiConsola( $data ) {
      $output = $data;
      if ( is_array( $output ) )
          $output = implode( ',', $output);
      echo "<script>console.log( '" . $output . "' );</script>";
  }
?>

<body onclick="koKliknes()" >
      <?php include 'povezava.php';      ?> <!-- povezava z bazo -->
  	<div id="log"></div>
	<form action="zdravnik3.php" method="post" id="quiz" name="neki">
		<p> PREJETI PODATKI </p>
		<?php echo '<p> EMSO: <input type="text" disabled name="emso"  value="'.$_GET['emso'].'"></p>' ?>
		<?php echo '<p> IME: <input type="text" disabled name="ime"  value="'.$_GET['ime'].'"></p>' ?>
		<?php echo '<p>DATUM:<input type="date" disabled name="datum" value="'.$_GET['datum'] . '"> </p>' ?>
		<?php echo '<p>VPRASALNIK:<input type="text" disabled id="vprasalnik" name="vprasalnik" value="'.$_GET['anketa'].'"  >  </p>' ?>
        <ol>
        	<li name="najdi" class="primerVprasanja" hidden>
        	</li>



<!-- IZPISI ANKETO: -->
<?php
mb_internal_encoding("UTF-8");
	// ----------------------------------------------------------------------------------------------------------------
	function izpisiEnoVprasanjeInOdgovore($idVprasanja='22'){
		$idi=0;
      	include 'povezava.php';
      	mb_internal_encoding("UTF-8");
		$sql = "SELECT * FROM odgovor o ,vprasanje v where o.id_vprasanje=v.id_vprasanje and o.id_vprasanje = $idVprasanja ";
		$result = $conn->query($sql);
		$result->num_rows;
		$row = $result->fetch_assoc();
		echo '<li name="najdi" class="primerVprasanja">';
		echo '<h3> '. $row["vprasanje"] .' </h3>  ';
		if ($result->num_rows > 0) {
		    	echo '<div>		<input onclick="premik()"  type="radio" value="'. $row["id_odgovor"] . ' " name="' . $row["id_vprasanje"]. '" id="odgovor' . $row["id_odgovor"]. '" />		<label for="odgovor'. $row["id_odgovor"].'"> '. $row["opis"]    .' '. ' </label>	</div>';

		    while($row = $result->fetch_assoc()) {
		    	echo '<div>		<input onclick="premik()" type="radio" value="'. $row["id_odgovor"] . ' " name="' . $row["id_vprasanje"]. '" id="odgovor' . $row["id_odgovor"]. '" />		<label for="odgovor'. $row["id_odgovor"].'"> '. $row["opis"]    .' '. ' </label>	</div>';
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
        	<button type="submit" value="Submit" disabled id="oddajOdgovoreGumb" onclick="CheckTextbox()" >	Najpej odgovorite na vsa vprašanja			</button>   	

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




<!-- OZNACI TISTE KI JIH JE OZNACIL PACIENT -->
<?php
	$datum = $_GET['datum'] . " 00:00:00";
	$emso = $_GET['emso'];
	$maxDatum = 'select datum from vpr_odg where vpr_odg.emso='.$emso.' and datum >=CAST(CURRENT_TIMESTAMP AS DATE) GROUP by datum ORDER by datum DESC LIMIT 1';
	$rez = $conn->query($maxDatum);
	if ($rez->num_rows > 0) {
		while($row = $rez->fetch_assoc()) {
	    	pisiConsola("===> " .$row["datum"]);
	    	$datum = $row["datum"];
	    } 
	}
	pisiConsola("datum: ". $datum . "emso=".  $emso);
	$sql = 'SELECT odgovor.id_odgovor FROM `vpr_odg`,odgovor,vprasanje where vpr_odg.id_odgovor=odgovor.id_odgovor and vpr_odg.id_vprasanje=vprasanje.id_vprasanje and emso='.$emso.' and datum >= ". $datum."';
	echo '<p id="odgovori" hidden>';
	$rez = $conn->query($sql);
		if ($rez->num_rows > 0) {
		    while($row = $rez->fetch_assoc()) {
		    	echo $row["id_odgovor"]. " ";
		    } 
		}
	echo "</p>";
?>
<script type="text/javascript">
	console.log(document.getElementById("odgovori").innerHTML);
	var arrai = document.getElementById("odgovori").innerHTML.split(" ");
	for (var i = 0; i < arrai.length; i++) {
		$id = "odgovor" + arrai[i] + " ";
		document.getElementById($id).checked = true;
	}

	

</script>

<footer style="position: absolute;bottom: 0px">Aplikacija je še v razvoju in je namenjena testiranju. Na spletni strani ne uporabljajte nobenih osebnih podatkov.</footer>


</body>
</html>