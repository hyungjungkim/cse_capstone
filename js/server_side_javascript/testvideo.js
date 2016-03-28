var fs = require('fs');
var http = require('http');


const hostname = '127.0.0.1';
const port = 3333;


var server = http.createServer(function(req,res){
  fs.readFile('160308 마마무 MAMAMOO 솔라 바라기 문별의 언니 챙기기.mp4',function(error,data){
    res.writeHead(200,{'Content-Type':'video/mp4'});
    res.end(data);
  });
});
server.listen(port,hostname,function(){
  console.log(`Server Running at http://${hostname}:${port}`);
});
