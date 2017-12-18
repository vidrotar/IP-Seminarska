<!-- funcija za pisati v konzolo -->
<?php 
	function pisiConsola( $data ) {
	    $output = $data;
	    if ( is_array( $output ) )
	        $output = implode( ',', $output);

	    echo "<script>console.log( '" . $output . "' );</script>";
	}
?>