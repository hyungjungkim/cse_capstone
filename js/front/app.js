var express = require("express");
var path = require('path');
var bodyParser = require('body-parser');

var app = express();

//pretty 줄바꿈
app.locals.pretty = true;

//view engine
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(bodyParser.urlencoded({ extended: false }))

app.get('/',function(req,res){
  res.render('showmylocation');
});

app.listen(3000 , function(){
	console.log('Connected 3000 port!');
});
