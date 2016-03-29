var express = require('express');
var fs = require('fs');
var bodyParser = require('body-parser');
var app = express();

//pretty
app.locals.pretty = true;

//template set
app.set('views','./views_file');
app.set('view engine','jade');

//body-parser
app.use(bodyParser.urlencoded({ extended: false }));
//template
app.get('/topic/new',function(req,res){
  res.render('new');
});

//route
app.get('/topic',function(req,res){
  fs.readdir('data',function(err,files){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    }
      res.render('view',{topics:files});
  })
});
app.get('/topic/:id',function(req,res){
  var id = req.params.id;
  fs.readdir('data',function(err,files){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    }
    fs.readFile('data/'+id,'utf8',function(err,data){
      if(err){
        console.log(err);
        res.status(500).send('Internal Server Error');
      }
      res.render('view',{topics:files, title:id, description:data});
    })
  })
});
app.post('/topic',function(req,res){
  var title = req.body.title;
  var description = req.body.description;
  //file에 추가. (파일이름,데이터,callback)
  fs.writeFile('data/'+title, description, function(err){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    }
    res.send('Success');
  });
});

app.listen(3000,function(){
  console.log('Connected, 3000 port!');
})
