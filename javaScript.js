function prikaziRezultate() {
   var fields = $( ":input" ).serializeArray();
   var bla = [];
   $( "#rezultati" ).empty();
   $( "#rezultati" ).append("</br>");
   jQuery.each( fields, function( i, field ) {
		$( "#rezultati" ).append( "vprasanje:" +  field.name + "=" +  field.value );
		bla[field.name] = field.value;
   });

   var telesnaID = document.getElementById("telesna").innerHTML.split(" ");
   var kognitivnaID = document.getElementById("kognitivna").innerHTML.split(" ");
   var psihosocialnaID = document.getElementById("psihosocialna").innerHTML.split(" ");

	

	var sestevekTelesna = 0;
	var arrayLength = telesnaID.length;
	for (var i = 0; i < arrayLength; i++) {
    	sestevekTelesna = parseInt(sestevekTelesna) + parseInt(bla[telesnaID[i]][0]) ;
	}

	var sestevekKognitivna = 0;
	var arrayLength = kognitivnaID.length;
	for (var i = 0; i < arrayLength; i++) {
    	sestevekKognitivna = parseInt(sestevekKognitivna) + parseInt(bla[kognitivnaID[i]][0]) ;
	}
	var sestevekPsihosocialna = 0;
	var arrayLength = psihosocialnaID.length;
	for (var i = 0; i < arrayLength; i++) {
    	sestevekPsihosocialna = parseInt(sestevekPsihosocialna) + parseInt(bla[psihosocialnaID[i]][0]) ;
	}

	var koncniSestevek = sestevekTelesna + sestevekKognitivna + sestevekPsihosocialna;
	document.getElementById("objavaRezultatov").innerHTML = "EMSO: "+ bla["emso"] + " </br> datum: " + bla["datum"] + "</br> Telesna podlestvica = " + sestevekTelesna + " </br> Kognitivna podlestvica" + sestevekKognitivna + " </br> Psihosocialna podlestvica" + " " + sestevekPsihosocialna + " </br> " + "Koncni sestevek: " + koncniSestevek;




}


