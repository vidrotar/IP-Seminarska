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
        
        // Vprasalnik = MFIS
        if($_POST["vprasalnik"] == "MFIS"){
            $kognitivna_podlestvica = 0;
            $telesna_podlestvica = 0;
            $psihosocialna_podlestvica =0;
            pisiConsola("VPRASALNIK = MFIS");
            foreach ($_POST as $key => $value) {
              pisiConsola( "Vprasanje id: " . $key . " Odgovor: " . $value);

              $sql = "SELECT * from odgovor o, vprasanje v,kategorija k,vprasalnik vpr where o.id_vprasanje=v.id_vprasanje and v.id_kategorije=k.id_kategorija and k.id_vprasalnik=vpr.id_vprasalnik and id_odgovor=$value";
              $rez = $conn->query($sql);
              if ($rez->num_rows > 0) {
                  while($row = $rez->fetch_assoc()) {
                    echo ' -- '. $row["id_vprasanje"] . ' -- ' . $row["vprasanje"] . ' -- ' . $row["id_odgovor"]  . ' -- ' . $row["opis"]. ' -- ' . $row["vrednost"] . ' -- ' . $row["id_kategorija"] . ' -- ' . $row["ime_kategorije"] . ' -- </br>';
                    if($row["ime_kategorije"] == "Kognitivna lestvica"){
                      $kognitivna_podlestvica +=$row["vrednost"];
                    }
                    elseif ($row["ime_kategorije"] == "Telesna podlestvica") {
                      $telesna_podlestvica +=$row["vrednost"];
                    }
                    elseif ($row["ime_kategorije"] == "Psihosocialna podlestvica") {
                      $psihosocialna_podlestvica +=$row["vrednost"];
                    }
                  } 
              }
            }
            echo "<div> Rezultat TELESNA podlestvica = " . $telesna_podlestvica . "</div>";
            echo "<div> Rezultat KOGNITIVNA podlestvica = " . $kognitivna_podlestvica . "</div>";
            echo "<div> Rezultat PSIHOSOCIALNA podlestvica = " . $psihosocialna_podlestvica . "</div>";
        }
        
        // Vprasalnik MSQOL-54
        elseif ($_POST["vprasalnik"] == "MSQOL-54") {
          $vprasanjaOdgovori =array();
          // pisiConsola(var_dump($vprasanjaOdgovori[$vprasanjeID]));
          pisiConsola("VPRASALNIK = MSQOL-54");
          foreach ($_POST as $key => $value) {
              pisiConsola( "Vprasanje id: " . $key . " Odgovor: " . $value);
              $sql = "SELECT * from odgovor o, vprasanje v,kategorija k,vprasalnik vpr where o.id_vprasanje=v.id_vprasanje and v.id_kategorije=k.id_kategorija and k.id_vprasalnik=vpr.id_vprasalnik and id_odgovor=$value";
              $rez = $conn->query($sql);
              if ($rez->num_rows > 0) {
                var_dump("neki");
                  while($row = $rez->fetch_assoc()) {
                    // echo ' -- '. $row["id_vprasanje"] . ' -- ' . $row["vprasanje"] . ' -- ' . $row["id_odgovor"]  . ' -- ' . $row["opis"]. ' -- ' . $row["vrednost"] . ' -- ' . $row["id_kategorija"] . ' -- ' . $row["ime_kategorije"] . ' -- </br>';
                    // $vprasanjaOdgovori = [
                      // $row["id_vprasanje"] => $$row["id_odgovor"]
                    // ];
                    echo  ' --->' . $row["id_vprasanje"] . ' -- ' . $row["id_odgovor"] . ' <-- </br>';
                    $vprasanjaOdgovori[$row["id_vprasanje"]] = $row["id_odgovor"];
                  } 
              }
          }
          // 1. podlestvica: physicalHealth
          $physicalHealth = array(3,4,5,6,7,8,9,10,11,12);
          $steviloZapisov = count($physicalHealth);
          $Rezultat = 0;
          echo '</br>';

          for($x = 0; $x < $steviloZapisov; $x++) {
          echo '</br>';

            echo $x .' : ' .  $physicalHealth[$x] ;
            echo 'vrednost:' . $vprasanjaOdgovori[$physicalHealth[$x]];
          }




          // foreach($vprasanjaOdgovori as $key=>$value) {
          //   pisiConsola("key:" . $key . " value:" . $value);
          // }

        }
      
  

        
      ?>
    

<!-- SELECT * from odgovor o, vprasanje v,kategorija k,vprasalnik vpr where o.id_vprasanje=v.id_vprasanje and v.id_kategorije=k.id_kategorija and k.id_vprasalnik=vpr.id_vprasalnik and id_odgovor=2 -->
<!-- -->
	
	</div>
	

</body>

</html>