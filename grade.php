<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>PHP Quiz</title>
	
	<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>

	<div id="page-wrap">

		<h1>Final Quiz for Lip building</h1>
	
      <?php include 'pisiVkonzolo.php';?> <!-- za pisanje v konzolo -->
      <?php include 'povezava.php';?> <!-- povezava z bazo -->
      
<?php 
      // izpis odgovorov
      pisiConsola("EMSO: " . $_POST["emso"]);
    foreach ($_POST as $key => $value) {
      pisiConsola( "Vprasanje id: " . $key . " Odgovor: " . $value);
      if ($key != 'emso') {
            $stmt = $conn->prepare("INSERT INTO odgovori (id_vprasanje, id_osebe, odgovor) VALUES (?, ?, ?)");
            $stmt->bind_param("iii", $id_vprasanje, $id_osebe, $odgovor );
            // set parameters and execute
            $id_vprasanje = $key;
            $id_osebe = $_POST["emso"];
            $odgovor = $value;
            $stmt->execute();
            $stmt->close();
           
            $log="id vprasanja=" . $id_vprasanje. " id_osebe=" . $id_osebe . " odgovor=" . $odgovor;
            pisiConsola($log);
      }
    }
?>


	
	</div>
	

</body>

</html>