const mysql=require('mysql')
var con = mysql.createConnection({
  multipleStatements: true,
    host: "localhost",
    user: "hirasoftwarecom_audit",
    database:"beshegercom_iap",
    password: "Yohannes@hira123321"
  });

  
  con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
  });  
  module.exports=con;
  