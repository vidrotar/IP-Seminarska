<!DOCTYPE>
<html>
<head>
	<title>bljat</title>
    <script src="script.js"></script>
	<link rel="stylesheet" type="text/css" href="css.css" />


</head>
<!-- <body onload="onLoad(1,2)"> -->
	<!-- blaJa -->
<body>

      <?php include 'pisiVkonzolo.php';?> <!-- za pisanje v konzolo -->
      <?php include 'povezava.php';?> <!-- povezava z bazo -->


<?php
	$sql = "SELECT * FROM vprasanja";
	$result = $conn->query($sql);

	echo '
		<div id="page-wrap">
			<h1>PRILAGOJENA LESTVICA VPLIVA UTRUJENOSTI MODIFIED FATIGUE IMPACT SCALE (MFIS)*</h1>
				<form action="grade.php" method="post" id="quiz">
				<p>EMSO: <input type="text" name="emso"  value="12345"></p><br>
            		<ol>
		';

	if ($result->num_rows > 0) {
	    // output data of each row
	    $i=1;
	    while($row = $result->fetch_assoc()) {
	        // echo "<p> id: " . $row["id"]. " | vprasanje: " . $row["vprasanje"]. " | kategorija: " . $row["kategorija"]. "<p>";
	    	echo '<li>';
	    	echo '<h3>  ' . $row["vprasanje"] .  '</h3>';
	        echo '<div>		<input type="radio" name="' . $row["id"]. '" id="odgovor' . $row["id"] . 'odgovorA" value="1" />	<label> NIKOLI 			</label>		</div>';
	        echo '<div>		<input type="radio" name="' . $row["id"]. '" id="odgovor' . $row["id"] . 'odgovorB" value="2" />	<label> REDKO 			</label>		</div>';
	        echo '<div>		<input type="radio" name="' . $row["id"]. '" id="odgovor' . $row["id"] . 'odgovorC" value="3" />	<label> VČASIH			</label>		</div>';
	        echo '<div>		<input type="radio" name="' . $row["id"]. '" id="odgovor' . $row["id"] . 'odgovorD" value="4" />	<label> POGOSTO 		</label>		</div>';
	        echo '<div>		<input type="radio" name="' . $row["id"]. '" id="odgovor' . $row["id"] . 'odgovorE" value="5" checked="checked"/>	<label> SKORAJ VEDNO 	</label>		</div>';
	        echo '</li>';
	        $i++;

	    }

	    echo '
            		</ol>
           		<input type="submit" value="Submit Quiz" />
			</form>
		</div>
	    ';
	    
	} else {
	    echo "0 results";
	}



?> 


<style type="text/css">
div.inline { float:left; }
.clearBoth { clear:both; }
</style>
<div class="inline">1<br />2<br />3</div>
<div class="inline">1<br />2<br />3</div>
<div class="inline">1<br />2<br />3</div>
<br class="clearBoth" /><!-- you may or may not need this -->

</body>
</html>