<!DOCTYPE>
<html>
<head>
	<title>MFIS</title>
    <script src="script.js"></script>
  	

  	<script src="./javaScript.js"></script> 
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>


<body onclick="prikaziRezultate()">

      <?php include 'pisiVkonzolo.php';?> <!-- za pisanje v konzolo -->
      <?php include 'povezava.php';?> <!-- povezava z bazo -->



<input type="text" name="vprasalnik"  value="MSQOL-54">
<h1>PRILAGOJENA LESTVICA VPLIVA UTRUJENOSTI MODIFIED FATIGUE IMPACT SCALE (MFIS)*</h1>



<!-- IZPISI ANKETO: -->
<?php

	
	// ----------------------------------------------------------------------------------------------------------------
	// izpise vsa vprasanja vprasalnika
	function izpisiVprasanja($vprasalnik='%MSQOL-54%')
	{
      	include 'povezava.php';
		echo "<div> ";
		$sql = "SELECT * from vprasalnik v, vprasanje v1,kategorija k where v.id_vprasalnik=v1.id_vprasalnika AND v1.id_kategorije=k.id_kategorija and naslov like '%$vprasalnik%' ORDER BY `v1`.`id_vprasanje`";
		$rez = $conn->query($sql);
		if ($rez->num_rows > 0) {
		    while($row = $rez->fetch_assoc()) {
		    	echo '<div>  ' .  'naslov:'. $row["naslov"] .' id_vprasanje:'. $row["id_vprasanje"] .' vprasanje:'. $row["vprasanje"] .' ime_kategorije:'. $row["ime_kategorije"] . '<div>';
		    } 
		}
		else{
			echo "error 1";
		}
		echo "</div>";
		// ----------------------------------------------------------------------------------------------------------------

	}
	// izpisiVprasanja();
	// izpisiVprasanja("%MFIS%");

	// ----------------------------------------------------------------------------------------------------------------	
	// izpise stevilo odgovorov na posamezno vprasanje
	// function steviloOdgovorov($id_vprasanje='22'){
 //      	include 'povezava.php';
	// 	$id_vprasanje = 22;
	// 	$steviloMoznihOdgovorov = "SELECT count(*)  FROM odgovor o ,vprasanje v where o.id_vprasanje=v.id_vprasanje and o.id_vprasanje = $id_vprasanje ";
	// 	$r = $conn->query($steviloMoznihOdgovorov);
	// 	while ($row = $r->fetch_assoc()) {
	// 		$steviloMoznihOdgovorov = $row['count(*)']."<br>";
	// 	}
	// 	echo 'stevilo moznih odgovorov na vprasanje = ' . $steviloMoznihOdgovorov . '</br>';
	// }
	// // steviloOdgovorov();
	// steviloOdgovorov(23);
	// ----------------------------------------------------------------------------------------------------------------

	// ----------------------------------------------------------------------------------------------------------------
	// izpise vse mozne odgovore na neko vprasanje
	function dejanskiOdgovori($idVprasanja='22'){
      	include 'povezava.php';
		$sql = "SELECT * FROM odgovor o ,vprasanje v where o.id_vprasanje=v.id_vprasanje and o.id_vprasanje = $idVprasanja ";
		$result = $conn->query($sql);
		// echo '
			// <div id="page-wrap">
			// 		<form action="grade.php" method="post" id="quiz">
			// 		<p> EMSO: <input type="text" name="emso"  value="12345"></p>
			// 		<p>DATUM:<input type="date" name="datum"> </p>
			// ';
		$result->num_rows;
		$row = $result->fetch_assoc();
		echo '<h3> Vprasanje = | '. 'id:' . $row["id_vprasanje"] .' vprasanje text:'. $row["vprasanje"] .  '| </h3>  ';
		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		    	echo '<h5>  ' .  'mozen odgovor:'. $row["opis"] .' </h5>';
		    }
		 //    echo '
	  //          		<input type="submit" value="Oddaj" />
			// 	</form>
			// </div>
		 //    ';
		    
		} else {
		    echo "error 0";
		}
	}
	// dejanskiOdgovori();
	// dejanskiOdgovori(23);
	// ----------------------------------------------------------------------------------------------------------------





	// ----------------------------------------------------------------------------------------------------------------
	function bla($vprasalnik='%MSQOL-54%')
	{
      	include 'povezava.php';
		echo "<div> ";
		$sql = "SELECT * from vprasalnik v, vprasanje v1,kategorija k where v.id_vprasalnik=v1.id_vprasalnika AND v1.id_kategorije=k.id_kategorija and naslov like '%$vprasalnik%' ORDER BY `v1`.`id_vprasanje`";
		$rez = $conn->query($sql);
		if ($rez->num_rows > 0) {
		    while($row = $rez->fetch_assoc()) {
		    	// echo '<div>  ' .' --- id_vprasanje:' . $row["id_vprasanje"] .'<div>';
		    		// $idVprasanja = $row["id_vprasanje"];
		    	echo '<div>';
		    	// echo $row["id_vprasanje"];
		    	echo "</br>";
		    	echo "</br>";
		    	dejanskiOdgovori($row["id_vprasanje"]);
		    	echo "</br>";
		    	echo "</br>";
		    	echo '</div>';

		    } 
		}
		else{
			echo "error 1";
		}
		echo "</div>";
		// ----------------------------------------------------------------------------------------------------------------

	}
	// izpisiVprasanja();
	// bla("%MFIS%");
	bla("%MSQOL-54%");
	// bla();



?> 





</body>
</html>