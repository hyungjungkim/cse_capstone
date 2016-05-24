var express = require('express');
var router = express.Router();
var mysql = require('mysql');

var pool = mysql.createPool({
	host : "127.0.0.1",
	user: 'capstone',
	password: 'capstone1!',
	database: 'capstone'
});


router.get('/',function(req,res,next){
  //var results = {};

  var err_results = {};
  err_results.success = 2;
  err_results.message = "fail";
  err_results.results = [];

  pool.getConnection(function(err, conn){
   if(err) {
      console.error('map : ', err);
      //conn.release();
      //callback(err_results);
   } else {
     var mapSQL = 'SELECT * FROM MEMBER';
     conn.query(mapSQL,function(err,results,fields){
       if(err){
           console.log(err);
           res.status(500).send('Internal Server Error');
       }else{
         res.render('show',{results:results});
         //res.render('showmylocation');
      }
     });
   }
 })
});

/*
router.get('/',function(req,res,next){
  res.render('showmylocation');
  //res.send("hi");
});
*/
module.exports = router;
