//express module
var express = require('express');
var bodyParser = require('body-parser');
//express가 post req.body를 지원 안하기 때문에 해줌.
var app = express();

//pretty 줄바꿈
app.locals.pretty = true;

//jade temlplate
app.set('view engine' , 'jade');
app.set('views','./views');

app.use(bodyParser.urlencoded({ extended: false }))

//정적인 파일을 서비스하는 법.
app.use(express.static('public'));

//jade template test
app.get('/template',function(req,res){
	res.render('temp',{_title:'okay jade' , time:Date()});
});

//query string***
app.get('/topic/:id',function(req,res){
	var topics = [
		'Javascript is.....',
		'Nodejs is......',
		'Express is.....'
	];
	var output = `
		<a href="/topic/0">Javascript</a><br>
		<a href="/topic/1">Nodejs</a><br>
		<a href="/topic/2">Express</a><br><br>
		${topics[req.params.id]}
	`
	res.send(output);
})

app.get('/topic/:id/:mode',function(req,res){
	res.send(req.params.id+','+req.params.mode)
});
// post
app.get('/form',function(req,res){
	res.render('form');
});
app.get('/form_receiver',function(req,res){
	var title = req.query.title;
	var description = req.query.description;
	res.send(title+'+DKDK+'+description);
});
app.post('/form_receiver',function(req,res){
	var title = req.body.title;
	var description = req.body.description;
	res.send(title+','+description);
});
//static or dynamic
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
