Red [
    Title: "nodejs.module.red"
]

Article: [

    Title: {nodejs.module}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/nodejs/nodejs.module.red](https://github.com/lepinekong/mycodesnippets/blob/master/nodejs/nodejs.module.red)
        }
        .Published-Url: http://mycodesnippets.space/nodejs/nodejs.module
    ]    
    
    nodejs.module.creation: [

        .title: {Module Creation}
        .code/javascript: {
exports.now = function() {
    var today = new Date();
    var hours = today.getHours();
    var minutes = today.getMinutes();
    var seconds = today.getSeconds();
    var milliseconds = today.getMilliseconds();
    return today;
}
        }
    ]

    nodejs.module.usage: [

        .title: {Module Usage}
        .code/javascript: {
var utils = require("./utils.js");
now = utils.now;

console.log('hello');
var greetings = 'hello';
console.log(now()+ ": " + greetings);
        }
    ]    
]

do read http://readablehumanformat.com/lib.red
markdown-gen 