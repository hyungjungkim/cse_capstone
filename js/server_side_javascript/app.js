//express module
var express = require('express');
var app = express();

//정적인 파일을 서비스하는 법.
app.use(express.static('public'));

app.get('/', function(req,res){
	res.send('Hello message');
});
app.get('/dynamic' , function(req,res){
	var lis = '';
	for(var i = 0 ; i< 5; i++){
		lis = lis + '<li>coding</li>';
	}
	var time = Date();
	var output = `
	<!DOCTYPE html>
	<html>
	  <head>
	    <meta charset="utf-8">
	    <title></title>
	  </head>
	  <body>
	    <h1>Hello, Dynamic!</h1>
			<ul>
				${lis}
			</ul>
			${time}
	  </body>
	</html>`; 			// 정적은 서버 껐다가 다시 실행해야지 변경사항 적용.
	res.send(output);
})
//정적인 파일을 서비스하는 법
app.get('/route', function(req,res){
	res.send('Hello Router, <img src="/once1.jpg">');
})
app.listen(3000 , function(){
	console.log('Connected 3000 port!');
});
