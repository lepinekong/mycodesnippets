
# AngularJs Video Gallery


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/angularjs/video-gallery.red](https://github.com/lepinekong/mycodesnippets/blob/master/angularjs/video-gallery.red)


### Demo

Visit: 
- [http://mycodesnippets.space/angularjs/src/video-gallery/index.html](http://mycodesnippets.space/angularjs/src/video-gallery/index.html)
                        
- [http://mycodesnippets.space/angularjs/src/video-gallery/index.html#4XNMCTBdQtk](http://mycodesnippets.space/angularjs/src/video-gallery/index.html#4XNMCTBdQtk)
                        
![https://i.imgur.com/POEiiM0.jpg](https://i.imgur.com/POEiiM0.jpg)
                    

### Source Code

The html skeleton was initially created with [mobirise](https://mobirise.com/) 
before customizing it with angularjs 
with Json Data and AngularJs Controller : 
![https://i.imgur.com/O1xlErj.png](https://i.imgur.com/O1xlErj.png)
                    
Html and AngularJs ng-repeat
![https://i.imgur.com/qtw74SE.png](https://i.imgur.com/qtw74SE.png)
                    
- [View index.html source](https://github.com/lepinekong/mycodesnippets/blob/master/angularjs/src/video-gallery/index.html)
                        
- [Copy index.html source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/angularjs/src/video-gallery/index.html)
                        
- [Download source and assets](https://github.com/lepinekong/mycodesnippets/blob/master/angularjs/src/video-gallery.zip)
                        


```html

<!DOCTYPE html>
<html ng-app="MyApp" ng-controller="myCtrl">

<head>
    <!-- Site made with Mobirise Website Builder v4.6.5, https://mobirise.com -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Mobirise v4.6.5, mobirise.com">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">
    <meta name="description" content="">
    <title>Home</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&subset=cyrillic,latin,greek,vietnamese">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/mobirise/css/style.css">
    <link rel="stylesheet" href="assets/dropdown-menu/style.css">
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.3/angular.min.js"></script>
</head>

<body>
    <script src="res/data.js">
        // videos = [
        //     {
        //         "id": "m40YOZr1nxQ",
        //         "title": "Let’s Code Real World App Using Purely Functional Techniques",
        //         "description": "We will create a small, real-world data transformation program that demonstrates how functional techniques address issues such as control flow, type construction, data validation, etc. Through demonstrate-by-example, we'll explore the railway pattern, monadic chaining, disjunctions, applicatives, and currying."
        //     },            
        //     {
        //         "id": "US8QG9I1XW0",
        //         "title": "Functional architecture - The pits of success - Mark Seemann",
        //         "description": " Instead of deliberate design, functional programming forms pits of success where you naturally fall into the same ‘best practices’ that you have to deliberately work for in object-oriented programming. In this session, you’ll learn about a handful of such ‘best practices’, and how functional programming automatically lead you there, without your explicit effort."
        //     },
        //     {
        //         "id": "E8I19uA-wGY",
        //         "title": "Functional programming design patterns by Scott Wlaschin",
        //         "description": "In object-oriented development, we are all familiar with design patterns such as the Strategy pattern and Decorator pattern, and design principles such as SOLID. The functional programming community has design patterns and principles as well."
        //     }            
        // ]
    </script>

    <script>
        var app = angular.module('MyApp', []);
        app.controller('myCtrl', function ($scope, $sce, $location, $anchorScroll) {
            console.log(1);
            function Video(id, title, description) {
debugger;
this.id = id;
this.url = $sce.trustAsResourceUrl("https://www.youtube.com/embed/" + id + "?rel=0&amp;amp;showinfo=0&amp;autoplay=0&amp;loop=0");
this.background = $sce.trustAsResourceUrl("https://www.youtube.com/embed/" + id + "?rel=0&amp;amp;showinfo=0&amp;autoplay=0&amp;loop=0");
this.title = title;
this.description = description;
            }

            $scope.videos = [];
            videos.forEach(function (video, i) {
debugger;
$scope.videos.push(new Video(video.id, video.title, video.description));
            });
            console.log($scope.videos);

        });
    </script>

<!-- start video gallery -->
<section ng-repeat="video in videos" id="{{video.id}}">
    <section class="mbr-section mbr-section--relative mbr-after-navbar" id="msg-box5-1" data-bg-video="{{video.background}}"
        data-rv-view="2">
        <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);"></div>
        <div class="mbr-section__container mbr-section__container--isolated container" style="padding-top: 93px; padding-bottom: 93px;">
            <div class="row">
<div class="mbr-box mbr-box--fixed mbr-box--adapted">
    <div class="mbr-box__magnet mbr-box__magnet--top-right mbr-section__left col-sm-6 image-size" style="width: 50%;">
        <figure class="mbr-figure mbr-figure--adapted mbr-figure--caption-inside-bottom mbr-figure--full-width">
            <iframe class="mbr-embedded-video" src="{{video.url}}" width="1280" height="720" frameborder="0" allowfullscreen></iframe>
        </figure>
    </div>
    <div class="mbr-box__magnet mbr-class-mbr-box__magnet--center-left col-sm-6 content-size mbr-section__right">
        <div class="mbr-section__container mbr-section__container--middle">
            <div class="mbr-header mbr-header--auto-align mbr-header--wysiwyg">
<h3 class="mbr-header__text">{{video.title}}</h3>

            </div>
        </div>
        <div class="mbr-section__container mbr-section__container--middle">
            <div class="mbr-article mbr-article--auto-align mbr-article--wysiwyg">
<p>{{video.description}}</p>
            </div>
        </div>

    </div>

</div>
            </div>
        </div>
    </section>
</section>
<!-- end video gallery-->


    <script src="assets/web/assets/jquery/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/smooth-scroll/smooth-scroll.js"></script>
    <script src="assets/jquery-mb-ytplayer/jquery.mb.ytplayer.min.js"></script>
    <script src="assets/mobirise/js/script.js"></script>
    <script src="assets/dropdown-menu/script.js"></script>


</body>

</html>            
        
```


