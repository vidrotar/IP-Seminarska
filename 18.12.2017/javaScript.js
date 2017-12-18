function prikaziRezultate() {
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

   console.log("Kategorije")
   console.log( document.getElementById("telesna").innerHTML);
   var telesnaID = document.getElementById("telesna").innerHTML.split(" ");
   console.log( document.getElementById("kognitivna").innerHTML);
   var kognitivnaID = document.getElementById("kognitivna").innerHTML.split(" ");
   console.log( document.getElementById("psihosocialna").innerHTML);
   var psihosocialnaID = document.getElementById("psihosocialna").innerHTML.split(" ");

	

	console.log("1 skupina");
	var sestevekTelesna = 0;
	var arrayLength = telesnaID.length;
	for (var i = 0; i < arrayLength; i++) {
    	// console.log("ID vprasanja " +  telesnaID[i] +" odgovor [0]" + bla[telesnaID[i]][0] );
    	sestevekTelesna = parseInt(sestevekTelesna) + parseInt(bla[telesnaID[i]][0]) ;
	}
	console.log("SESTEVEK = " + sestevekTelesna);





	console.log("2 skupina");
	var sestevekKognitivna = 0;
	var arrayLength = kognitivnaID.length;
	for (var i = 0; i < arrayLength; i++) {
    	sestevekKognitivna = parseInt(sestevekKognitivna) + parseInt(bla[kognitivnaID[i]][0]) ;
	}
	console.log("SESTEVEK = " + sestevekKognitivna);



	console.log("3 skupina");
	var sestevekPsihosocialna = 0;
	var arrayLength = psihosocialnaID.length;
	for (var i = 0; i < arrayLength; i++) {
    	sestevekPsihosocialna = parseInt(sestevekPsihosocialna) + parseInt(bla[psihosocialnaID[i]][0]) ;
	}
	console.log("SESTEVEK = " + sestevekPsihosocialna);


	var koncniSestevek = sestevekTelesna + sestevekKognitivna + sestevekPsihosocialna;
	document.getElementById("objavaRezultatov").innerHTML = "EMSO: "+ bla["emso"] + " </br> datum: " + bla["datum"] + "</br> Telesna podlestvica = " + sestevekTelesna + " </br> Kognitivna podlestvica" + sestevekKognitivna + " </br> Psihosocialna podlestvica" + " " + sestevekPsihosocialna + " </br> " + "Koncni sestevek: " + koncniSestevek;




}


