
# nodejs.server


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/nodejs/nodejs.server.red](https://github.com/lepinekong/mycodesnippets/blob/master/nodejs/nodejs.server.red)


### Simplest Server



```javascript

var sysHttp = require("http");
var requestHandler = function(req,res) {
    var greetings = "hello from requestHandler";
    console.log(greetings);
    res.writeHead(200,{'Content-Type':  'text/plain'});
    res.end(greetings + "\n");
};
var server = sysHttp.createServer(requestHandler);
server.listen(1337,"127.0.0.1");
        
```


