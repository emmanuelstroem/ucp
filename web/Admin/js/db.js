    
    var mysql      = require('mysql');

    var connection = mysql.createConnection({
      host     : 'localhost',
      user     : 'root',
      password : '',
      database : 'cancer'
    });

    connection.connect();

    connection.query('SELECT * from screens_result', function(err, rows, fields) {
      if (err) throw err;

      console.log("Total: " + rows.length);
      //console.log('Queryult: ', rows);
    /*
      var columns=new Array(fields.length);
      for (var j = 0; j < fields.length; ++j) {
    	columns[j] = fields[j]['name'];
      }

      for (var i in rows) {
    	var row = rows[i];
    	//console.log(row.FirstName);
    	for (var j = 0; j < fields.length; ++j) {
    		console.log(columns[j], ': ', row[columns[j]]);
    	}	
      }
      */

    });

    //Escaping query values
    var positive = 'Positive';
    var sql    = 'SELECT * FROM screens_result WHERE finding = ' + connection.escape(positive);
    connection.query(sql, function(err, rows, fields) {
      if (err) throw err;

      console.log("have cancer: " + rows.length);
      //console.log('Queryult: ', rows);
    });

    //Escaping query values  
    var negative = 'negative';
    var sql    = 'SELECT * FROM screens_result WHERE finding = ?';
    connection.query(sql, [negative], function(err, rows, fields) {
      if (err) throw err;

      console.log("Don't have cancer: " + rows.length);
      //console.log('Queryult: ', rows);
    });

    //Insert
    /*var post  = {Dated: new Date(), FirstName: 'Jane', LastName: 'Smith'};
    var query = connection.query('INSERTO Contact SET ?', post, function(err, rows, fields) {
      if (err) throw err;
      console.log(query.sql); 
      console.log(rows.insertId);
    });
    */
    connection.end();

