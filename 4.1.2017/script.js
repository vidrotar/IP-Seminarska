function onLoad(p1, p2) {
    var mysql = require('mysql');

	var con = mysql.createConnection({
	  host: "localhost",
	  user: "root",
	  password: "",
	  database: "IP_HSAP"
	});

	con.connect(function(err) {
	  if (err) throw err;
	  		con.query("SELECT * FROM vprasanja", function (err, result, fields) {
	  if (err) throw err;
	    console.log(result);
	  });
	});
}




	