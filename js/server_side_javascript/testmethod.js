//다시 한번 해봐야함.
var http = require('http');
var fs = require('fs');


http.createServer(function(req,res){

  if(req.method == 'GET'){

    fs.readFile('HTMLPage.html',function(error,data){
      res.writeHead(200,{'Content-Type':'text/html'});
      res.end(data);
    });
  }else if(req.method == 'POST'){
    console.log("aaaa");
    req.on('data',function(data){
      res.writeHead(200,{'Content-Type':'test/html'});
      res.end('<h1'+data+'</h1>');
    });
  }
}).listen(52274,function(){
  console.log('Server Running at http://127.0.0.1:52274');
})
