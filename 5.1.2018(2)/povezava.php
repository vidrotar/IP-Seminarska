<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "IP_HSAP";

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }
  mb_internal_encoding("UTF-8")

?>