<!DOCTYPE>
<html>
<head>
	<title>MFIS</title>
    <script src="script.js"></script>
  	

  	<script src="./novJavaScript.js"></script> 
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>


<body onclick="koKliknes()">

      <?php include 'pisiVkonzolo.php';?> <!-- za pisanje v konzolo -->
      <?php include 'povezava.php';?> <!-- povezava z bazo -->


	<input type="text" name="vprasalnik"  value="MSQOL-54">
	<h1>PRILAGOJENA LESTVICA VPLIVA UTRUJENOSTI MODIFIED FATIGUE IMPACT SCALE (MFIS)*</h1>
  	<div id="log"></div>

	<form action="grade.php" method="post" id="quiz">
		<p> EMSO: <input type="text" name="emso"  value="12345"></p><br>
		<p>DATUM:<input type="date" name="datum"> </p>
        <ol>
        	<li name="najdi" class="primerVprasanja" hidden>
        		<!-- <h3>  Vprasanje </h3>
        		<div>		
        			<input type="radio" name=" -||- " id=" -||- " value=" -||-" />	
        			<label> TEXT ODGOVORA 	</label>

        			<input type="radio" name=" -||- " id=" -||- " value=" -||-" />	
        			<label> TEXT ODGOVORA 	</label>
        			
        			<input type="radio" name=" -||- " id=" -||- " value=" -||-" />	
        			<label> TEXT ODGOVORA 	</label>
        		</div> -->

        	</li>
        </ol>

	</form>


<!-- IZPISI ANKETO: -->
<?php

	// ----------------------------------------------------------------------------------------------------------------
	// izpise vprasanje in vse mozne odgovore na neko vprasanje
	function izpisiEnoVprasanjeInOdgovore($idVprasanja='22'){
      	include 'povezava.php';
		$sql = "SELECT * FROM odgovor o ,vprasanje v where o.id_vprasanje=v.id_vprasanje and o.id_vprasanje = $idVprasanja ";
		$result = $conn->query($sql);
		$result->num_rows;
		$row = $result->fetch_assoc();
		// IZPISE VPRASANJE
		echo '<h3> vprasanje text:'. $row["vprasanje"] .  ' [id_vprasanje:'.$row["id_vprasanje"].'] </h3>  ';
		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		    	// IZPISE ODGOVOR
		    	// echo '<div>  ' .  'mozen odgovor:'. $row["opis"] .' </div>';
		    	echo '<div>		<input type="radio" value="'. $row["id_odgovor"] . ' " name="' . $row["id_vprasanje"]. '" id="odgovor' . $row["id_odgovor"]. ' " />		<label> '. $row["opis"]  . ' [id_odgovor:' . $row["id_odgovor"] .'] </label>		</div>';
		    }
		} else {
		    echo "error 0";
		}
	}
	// ----------------------------------------------------------------------------------------------------------------





	// ----------------------------------------------------------------------------------------------------------------
	// izpise vsa vprasanja in vse mozne odgovore
	function izpisiVprasanjaInOdgovore($vprasalnik='%MSQOL-54%')
	{
      	include 'povezava.php';
		echo "<div> ";
		$sql = "SELECT * from vprasalnik v, vprasanje v1,kategorija k where v.id_vprasalnik=v1.id_vprasalnika AND v1.id_kategorije=k.id_kategorija and naslov like '%$vprasalnik%' ORDER BY `v1`.`id_vprasanje`";
		$rez = $conn->query($sql);
		if ($rez->num_rows > 0) {
		    while($row = $rez->fetch_assoc()) {
		    	echo '<div>';
		    	echo "</br>";
		    	echo "</br>";
		    	izpisiEnoVprasanjeInOdgovore($row["id_vprasanje"]);
		    	echo "</br>";
		    	echo "</br>";
		    	echo '</div>';
		    } 
		}
		else{
			echo "error 1";
		}
		echo "</div>";
	}
	izpisiVprasanjaInOdgovore("%MSQOL-54%");
	// ----------------------------------------------------------------------------------------------------------------

	// ----------------------------------------------------------------------------------------------------------------
	// KAKO DODAMO DIV ZA DOLOCENIM DIV-om
?> 



<input type="checkbox" id="Checkbox1" name = "chk" value = "1" />
<input type="checkbox" id="Checkbox2" name = "chk" value = "2" />
<input type="checkbox" id="Checkbox3" name = "chk" value = "3" />
<input type="checkbox" id="Checkbox4" name = "chk" value = "4" />
<input type="button" id="demo" value = "Demo" />
 
<script type = "text/javascript" src = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.6.1.min.js"></script>
<script type="text/javascript">
	// VRNE VSE ODGOVORE KI SO OZNACENI
	function koKliknes(){
		var vsi = "";
		var oznaceni = [];;
		$('input[type=radio]').each(function () {
    		if (this.checked){
    			oznaceni.push($(this).val());
    		}
		});
		// console.log (vsi);
		console.log(oznaceni);
		return oznaceni;
	}
</script>




</body>
</html>