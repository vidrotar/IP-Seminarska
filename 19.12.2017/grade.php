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
              pisiConsola( "-->Vprasanje id: " . $key . " Odgovor: " . $value);

              $sql = "SELECT * from odgovor o, vprasanje v,kategorija k,vprasalnik vpr where o.id_vprasanje=v.id_vprasanje and v.id_kategorije=k.id_kategorija and k.id_vprasalnik=vpr.id_vprasalnik and id_odgovor=$value";
              $rez = $conn->query($sql);
              if ($rez->num_rows > 0) {
                  while($row = $rez->fetch_assoc()) {
                    pisiConsola('id_vprasanje:'. $row["id_vprasanje"] . ' vprasanje:' . $row["vprasanje"] . ' id_odgovor:' . $row["id_odgovor"]  . ' opis:' . $row["opis"]. ' vrednost:' . $row["vrednost"] . ' id_kategorija:' . $row["id_kategorija"] . ' ime_kategorije:' . $row["ime_kategorije"] );
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
          $zaporedna_stevilka_vprasanja=1;
          // pisiConsola(var_dump($vprasanjaOdgovori[$vprasanjeID]));
          pisiConsola("VPRASALNIK = MSQOL-54");
          foreach ($_POST as $key => $value) {
              // pisiConsola( "Vprasanje id: " . $key . " Odgovor: " . $value);
              $sql = "SELECT * from odgovor o, vprasanje v,kategorija k,vprasalnik vpr where o.id_vprasanje=v.id_vprasanje and v.id_kategorije=k.id_kategorija and k.id_vprasalnik=vpr.id_vprasalnik and id_odgovor=$value";
              $rez = $conn->query($sql);
              if ($rez->num_rows > 0) {
                // var_dump("neki");
                  while($row = $rez->fetch_assoc()) {
                    // echo ' -- '. $row["id_vprasanje"] . ' -- ' . $row["vprasanje"] . ' -- ' . $row["id_odgovor"]  . ' -- ' . $row["opis"]. ' -- ' . $row["vrednost"] . ' -- ' . $row["id_kategorija"] . ' -- ' . $row["ime_kategorije"] . ' -- </br>';
                    // $vprasanjaOdgovori = [
                      // $row["id_vprasanje"] => $$row["id_odgovor"]
                    // ];
                    echo  ' $zaporedna_stevilka_vprasanja:' . $zaporedna_stevilka_vprasanja . ' odgovor:' . $row["id_odgovor"] . ' vrednost:' .  $row["vrednost"] . '<-- </br>';
                    $zaporedna_stevilka_vprasanja+=1;
                    $vprasanjaOdgovori[$zaporedna_stevilka_vprasanja] = $row["vrednost"];
                  } 
              }
          }

          echo '</br>';
          echo '</br>';

          function FunctionName($imePodkatgorije, $indexi,$vprasanjaOdgovori)
          {
            echo "<br>";
            echo "<div> senkrat".  $imePodkatgorije;
            $steviloZapisov = count($indexi);
            $Rezultat = 0;
            for($x = 0; $x < $steviloZapisov; $x++) {
            echo '</br>';
              echo 'index: ' .  $indexi[$x] . ' vrednost:' . $vprasanjaOdgovori[$indexi[$x]] ;
              $Rezultat += $vprasanjaOdgovori[$indexi[$x]];
            }
            $Rezultat = $Rezultat%$steviloZapisov;
            echo "</br>";  
            echo  'REZULTAT:' .$Rezultat;
            echo "</div>"; 
            return  $Rezultat;
          }
          $a = FunctionName("1.  PhysicalHealth",array(3,4,5,6,7,8,9,10,11,12),$vprasanjaOdgovori);
          $b = FunctionName("2.  Role limitations due to physical problems",array(13,14,15,16),$vprasanjaOdgovori);
          $c = FunctionName("3.  Role limitations due to emotional problems",array(17,18,19),$vprasanjaOdgovori);
          $d = FunctionName("4.  Pain",array(21,22,52),$vprasanjaOdgovori);
          $e = FunctionName("5.  Emotional well-being",array(24,25,26,28,30),$vprasanjaOdgovori);
          $f = FunctionName("6.  Energy23,27,29,31,32",array(),$vprasanjaOdgovori);
          $g = FunctionName("7.  Health Perceptions",array(1,34,35,36,37),$vprasanjaOdgovori);
          $h = FunctionName("8.  Social function",array(20,33,51),$vprasanjaOdgovori);
          $i = FunctionName("9.  Cognitive function",array(42,42,43,44,45),$vprasanjaOdgovori);
          $j = FunctionName("10. Health distress",array(38,39,40,41),$vprasanjaOdgovori);
          $k = FunctionName("11. Sexual function*",array(46,47,48,49),$vprasanjaOdgovori);
          $l = FunctionName("12. Change in health",array(2),$vprasanjaOdgovori);
          $m = FunctionName("13. Satisfaction with sexual function",array(50),$vprasanjaOdgovori);
          $n = FunctionName("14. Overall quality of life",array(53,54),$vprasanjaOdgovori);

          echo 'Table 2 </br> Formula for calculating MSQOL-54 Physical Health Composite Score';
          $PhysicalHealthCompositeScore = $a + $b + $c + $d + $e + $f + $g + $h;
          echo 'PHYSICAL HEALTH COMPOSITE: Sum subtotals (a) through (h) =' . $PhysicalHealthCompositeScore;

          echo '</br>';
          echo 'Table 3 Formula for calculating MSQOL-54 Mental Health Composite Score';
          $MentalHealthCompositeScore = $a + $b + $c + $d + $e;
          echo 'MENTAL HEALTH COMPOSITE: Sum subtotals (a) through (e) =' . $MentalHealthCompositeScore;


          




        }
      
  

        
      ?>
    

<!-- SELECT * from odgovor o, vprasanje v,kategorija k,vprasalnik vpr where o.id_vprasanje=v.id_vprasanje and v.id_kategorije=k.id_kategorija and k.id_vprasalnik=vpr.id_vprasalnik and id_odgovor=2 -->
<!-- -->
	
	</div>
	

</body>

</html>