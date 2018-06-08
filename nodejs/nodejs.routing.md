
# nodejs.routing


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/nodejs/nodejs.routing.red](https://github.com/lepinekong/mycodesnippets/blob/master/nodejs/nodejs.routing.red)


### Simple Router in NodeJs without Framework



```javascript

var sysHttp = require("http");
var requestHandler = function(req,res) {
    var page_home = "Home";
    var page_about = "About";
    var page_products = "Products";
    var page_pricing = "Pricing";
    console.log(greetings);
    res.writeHead(200,{'Content-Type':  'text/plain'});
    
    var greetings;
    switch (req.url) {
    
    case "/about":
        page = page_about;
        break;
    case "/products":
        page = page_products;
        break;
    case "/pricing":
        page = page_pricing;
    default:
        page = page_home;

}
    res.end(page + "\n");
};
var server = sysHttp.createServer(requestHandler);
server.listen(1337,"127.0.0.1");
        
```


