function prikaziRezultate() {
   console.log("dsa");
   var fields = $( ":input" ).serializeArray();
   var bla = [];
   $( "#rezultati" ).empty();
   $( "#rezultati" ).append("</br>");
   jQuery.each( fields, function( i, field ) {
		// $( "#rezultati" ).append( "vprasanje:" +  field.name + "=" +  field.value + " </br>" );
		$( "#rezultati" ).append( "vprasanje:" +  field.name + "=" +  field.value );
		// console.log("field.name:" + field.name + " field.value:" + field.value);
		bla[field.name] = field.value;

   });

function UstvariVprasanje(){
   console.log("bla");
	// $( ".inner" ).after( "<p>Test</p>" );
   $( ".primerVprasanja" ).after( "<h3>  NOVO Vprasanje </h3>" );  

    
}




}