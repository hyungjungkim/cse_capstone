var express = require("express");

var bodyParser = require('body-parser');

var app = express();

//pretty 줄바꿈
app.locals.pretty = true;

app.set('view engine' , 'ejs');
app.set('views' , './views');


app.use(bodyParser.urlencoded({ extended: false }))

app.get('/test',function(req,res){
  res.render('test',{_title:'okay ejs' , time:Date()});
});

app.listen(3003 , function(){
	console.log('Connected 3003 port!');
});
