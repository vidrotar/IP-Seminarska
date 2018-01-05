<!DOCTYPE>
<html>
<head>
	<title>MFIS</title>
    <script src="script.js"></script>
  	
 	<meta charset="UTF-8"> 
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<link rel="stylesheet" type="text/css" href="css/styleGlavnaStran.css">
	<link rel="stylesheet" type="text/css" href="css/gumb.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">




</head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<body onclick="koKliknes()" >
<!-- <body onclick="" > -->
      <?php include 'povezava.php';      ?> <!-- povezava z bazo -->
  	<div id="log"></div>
	<form action="bolnik3.php" method="post" id="quiz" name="neki">
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
		    	echo '<div>		<input type="radio" value="'. $row["id_odgovor"] . ' " name="' . $row["id_vprasanje"]. '" id="odgovor' . $row["id_odgovor"]. '" />		<label for="odgovor'. $row["id_odgovor"].'"> '. $row["opis"]    .' '. ' </label>	</div>';

		    while($row = $result->fetch_assoc()) {
		    	echo '<div>		<input type="radio" value="'. $row["id_odgovor"] . ' " name="' . $row["id_vprasanje"]. '" id="odgovor' . $row["id_odgovor"]. '" />		<label for="odgovor'. $row["id_odgovor"].'"> '. $row["opis"]    .' '. ' </label>	</div>';
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
		$index=0;
		if ($rez->num_rows > 0) {
		    while($row = $rez->fetch_assoc()) {
		    	echo "</br>";
		    	echo '<div id='.$index.' onclick=premik(this.id)> ';
		    	izpisiEnoVprasanjeInOdgovore($row["id_vprasanje"]);
		    	echo "</div>";
		    	$index++;
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
        	<!-- <button type="submit" value="Submit" disabled id="oddajOdgovoreGumb" onclick="CheckTextbox()" >	Najpej odgovorite na vsa vprašanja			</button>   	 -->
        	<button type="submit" value="Submit" disabled id="oddajOdgovoreGumb" onclick="" >	Najpej odgovorite na vsa vprašanja			</button>   	
        	


	</form>



<script>
function premik($index) {
	$index = parseInt($index) + 1;
    var elmnt = document.getElementById($index);
    elmnt.scrollIntoView({behavior: "smooth"});
}

</script>
<script type="text/javascript">
var oznaceniIndexi=[];

function koKliknes(){
		var vsi = "";
		var oznaceni = [];
		$('input[type=radio]').each(function () {
    		if (this.checked){
    			oznaceni.push($(this).val());
    			// console.log("----->" + this.parentElement.parentElement.parentElement.id)
    			oznaceniIndexi.push(this.parentElement.parentElement.parentElement.id);
    		}
		});
		// console.log(oznaceni);
		// console.log(oznaceniIndexi);
		// console.log("stevilo oznacenih= " + oznaceni.length );
		// console.log("stevilo vseh = " + document.getElementById('steviloVsehVprasanj').innerHTML);

		var el = document.getElementById('steviloVsehVprasanj');
		if(oznaceni.length == document.getElementById('steviloVsehVprasanj').innerHTML){
			// console.log("JUPI");
			document.getElementById('oddajOdgovoreGumb').disabled = false;
			document.getElementById("oddajOdgovoreGumb").innerHTML = "Pošlji odgovore";
		}
		else{
			document.getElementById("oddajOdgovoreGumb").innerHTML = "Najpej odgovori na vsa vprašanja";
		}
		// console.error(oznaceniIndexi.length);
		var preveriIndex=0;
		$prestavi = 0;
		if(document.getElementById('steviloVsehVprasanj').innerHTML != oznaceniIndexi.length){
			for (var i = 0; i < document.getElementById('steviloVsehVprasanj').innerHTML; i++) {
				console.log(oznaceniIndexi[i]);
				if(oznaceniIndexi[i]== null){
					console.log("ni se" + i);
					prestavi = parseInt(i) + 1;
					var elmnt = document.getElementById(prestavi);
					elmnt.scrollIntoView({behavior: "smooth"});
				}
				i = document.getElementById('steviloVsehVprasanj').innerHTML;
			}
	
		}



		


		return oznaceni;
}


</script>













</body>
</html>