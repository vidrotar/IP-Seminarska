<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>REZULTATI MFIS</title>
	
	<link rel="stylesheet" type="text/css" href="css/style.css" />


  <script src="./javaScript.js"></script> 

</head>

<body">

	<div id="page-wrap">

		<h1>REZULTATI:</h1>
	
      <?php include 'pisiVkonzolo.php';?> <!-- za pisanje v konzolo -->
      <?php include 'povezava.php';?> <!-- povezava z bazo -->
      
      <?php 
        // izpis odgovorov
        pisiConsola("EMSO: " . $_POST["emso"]);
        pisiConsola("DATUM: " . $_POST["datum"]);
        // var_dump( $_POST["vprasalnik"]);

        pisiConsola("VPRASALNIK: " . $_POST["vprasalnik"]);
        $kognitivna = 0;
        $telesna = 0;
        $psihosocialna =0;
        if($_POST["vprasalnik"] == "MFIS"){
            pisiConsola("VPRASALNIK = MFIS");
            foreach ($_POST as $key => $value) {
              pisiConsola( "Vprasanje id: " . $key . " Odgovor: " . $value);

              $sql = "SELECT * from odgovor o, vprasanje v,kategorija k,vprasalnik vpr where o.id_vprasanje=v.id_vprasanje and v.id_kategorije=k.id_kategorija and k.id_vprasalnik=vpr.id_vprasalnik and id_odgovor=$value";
              $rez = $conn->query($sql);
              // var_dump($rez);
              if ($rez->num_rows > 0) {
                  while($row = $rez->fetch_assoc()) {
                    echo ' -- '. $row["id_vprasanje"] . ' -- ' . $row["vprasanje"] . ' -- ' . $row["id_odgovor"]  . ' -- ' . $row["opis"]. ' -- ' . $row["vrednost"] . ' -- ' . $row["id_kategorija"] . ' -- ' . $row["ime_kategorije"] . ' -- </br>';
                    if($row["ime_kategorije"] == "Kognitivna lestvica"){
                      $kognitivna +=$row["vrednost"];
                    }
                    elseif ($row["ime_kategorije"] == "Telesna podlestvica") {
                      $telesna +=$row["vrednost"];
                    }
                    elseif ($row["ime_kategorije"] == "Psihosocialna podlestvica") {
                      $psihosocialna +=$row["vrednost"];
                    }
                  } 
              }
            }
        }
        echo "REZUTAT KONG... bla bla = " . $kognitivna;

      
  

        
      ?>
    

<!-- SELECT * from odgovor o, vprasanje v,kategorija k,vprasalnik vpr where o.id_vprasanje=v.id_vprasanje and v.id_kategorije=k.id_kategorija and k.id_vprasalnik=vpr.id_vprasalnik and id_odgovor=2 -->
<!-- -->
	
	</div>
	

</body>

</html>