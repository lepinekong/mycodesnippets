Red [
    Title: "anchor-link.red"
    .links: [
        http://www.tutorialsavvy.com/2014/09/implementing-angularjs-anchor-scroll.html/
        http://embed.plnkr.co/KzcMJmDGfN263AQrVY9N/
    ]
]

Article: [

    Title: {anchor-link}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/angularjs/anchor-link.red](https://github.com/lepinekong/mycodesnippets/blob/master/angularjs/anchor-link.red)
        }
        .Published-Url: http://mycodesnippets.space/angularjs/anchor-link
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/angularjs/src/anchor-link/index.html}
        .image: https://i.imgur.com/Gp42ntk.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/angularjs/src/anchor-link/index.html
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/angularjs/src/anchor-link/index.html
        ]        
        .code/html: {
<!DOCTYPE html>
<html ng-app="studentApp">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.14/angular.min.js">
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.14/angular-route.min.js">
    </script>
    <meta charset="utf-8">
    <title>AngularJS Anchor Scroll Example</title>
<script>
var studentApp = angular.module("studentApp",[]);


//Using AnchorScroll
studentApp.controller("ItemController",
    function ($scope, $location, $anchorScroll) {
    $scope.terms = {
    "fruits":["Apple","Mango","orange",
            "litchi","pears"],
    "flowers":["Rose","lily","jasmin",
            "lotus","sunflower"],
    "vegetables":["Potato","tomato","ladyfinger",
            "couliflower","cabbage"],
    "games":["Cricket","football","tennis",
            "baseball","hockey"],
    "countries":["India","America","China",
                "united kingdom","germany"]
    };

    $scope.jumpToLocation = function(key){
        $location.hash(key);
        $anchorScroll();
    }
});    
</script>  
</head>
<body ng-controller="ItemController">
    <button ng-repeat="(key, value) in terms"
        ng-click="jumpToLocation(key)">
        {{key}}
    </button>
    <div ng-repeat="(key, value) in terms" 
        id="{{key}}">
    <h1>{{key}}<h1>
    <ol>
        <li ng-repeat="item in value">
            {{item}}
        </li>
    </ol>
    </div>
</body>
</html>
        }

    ]
]

do https://readable.red
markdown-gen 