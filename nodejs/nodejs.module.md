
# nodejs.module


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/nodejs/nodejs.module.red](https://github.com/lepinekong/mycodesnippets/blob/master/nodejs/nodejs.module.red)


### Module Creation



```javascript

exports.now = function() {
    var today = new Date();
    var hours = today.getHours();
    var minutes = today.getMinutes();
    var seconds = today.getSeconds();
    var milliseconds = today.getMilliseconds();
    return today;
}
        
```



### Module Creation



```javascript

var utils = require("./utils.js");
now = utils.now;

console.log('hello');
var greetings = 'hello';
console.log(now()+ ": " + greetings);
        
```


