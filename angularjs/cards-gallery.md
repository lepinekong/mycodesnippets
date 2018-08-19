
# angularjs cards gallery


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/angularjs/cards-gallery.red](https://github.com/lepinekong/mycodesnippets/blob/master/angularjs/cards-gallery.red)


### Demo

Goto:
- [http://mycodesnippets.space/angularjs/src/cards-gallery/index.html](http://mycodesnippets.space/angularjs/src/cards-gallery/index.html)
                        
![https://i.imgur.com/G1XtBhl.jpg](https://i.imgur.com/G1XtBhl.jpg)
                    

### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/angularjs/src/cards-gallery/index.html)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/angularjs/src/cards-gallery/index.html)
                        


```html

<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v4.6.5, https://mobirise.com -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="Mobirise v4.6.5, mobirise.com">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
<link rel="shortcut icon" href="assets/images/logo4.png" type="image/x-icon">
<meta name="description" content="">

<!-- start no cache -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="CACHE-CONTROL" content="MAX-AGE=0"/>
        <meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
        <meta http-equiv="EXPIRES" content="Mon, 17 Sep 2012 12:00:00 GMT">    
<!-- end no cache -->

  <title>Miniapps.red</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/animatecss/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">

  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src=datas/datas.js></script>
</head>

<body ng-app='myApp' ng-controller='myCtrl'>

        <script>

var app = angular.module("myApp", []);
app.controller("myCtrl", function ($scope, $sce) {
    $scope.datas = datas;
    $scope.datas0 = datas0;
});    

        </script>      

<!-- Start (Header-Page) -->

    <section class="header11 cid-qY7LWjTrlx mbr-fullscreen" id="header11-d">

            <!-- Block parameters controls (Blue "Gear" panel) -->
            
            <!-- End block parameters -->
        
            
            <div class="container align-left">
<div class="media-container-column mbr-white col-md-12">
    <h3 class="mbr-section-subtitle py-3 mbr-fonts-style display-5">
        Miniapps.red</h3>
    <h1 class="mbr-section-title py-3 mbr-fonts-style display-1">
        Run <strong>light-weight</strong>&nbsp;apps! No more eaten disk space. You can even run them&nbsp;<strong>remotely.</strong>
    </h1>
    <p class="mbr-text py-3 mbr-fonts-style display-5">Apps are free and opensource.</p>
    <div class="mbr-section-btn py-4"><a class="btn btn-md btn-secondary display-4" href="#">LEARN MORE</a>
            <a class="btn btn-md btn-white-outline display-4" href="#">DEMO</a></div>
</div>
            </div>
        
            <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
<a href="#next">
    <i class="mbri-down mbr-iconfont"></i>
</a>
            </div>
    </section>    

<!-- Finish (Header-Page) -->
<!-- Start (Section-Title) -->
<section class="engine"><a href="https://miniapps.red">miniapps.red</a></section><section class="mbr-section article content10 cid-qY7O9F5zbK" id="content10-e">
    <div class="container">
        <div class="inner-container" style="width: 66%;">
            <hr class="line" style="width: 25%;">
            <div class="section-text align-center mbr-white mbr-fonts-style display-5">Featured miniapps</div>
            <hr class="line" style="width: 25%;">
        </div>
    </div>
</section> 
<!-- Finish (Section-Title) -->
<!-- Start (Gallery-Cards-4) -->
<section class="features17 cid-qY7S57lmwU" id="features17-h">
    <div class="container-fluid">
        <div class="media-container-row">        

            <div class="card p-3 col-12 col-md-6 col-lg-3" ng-repeat="data in datas">
<div class="card-wrapper">
    <div class="card-img">
            <img src="{{data.image}}" alt="{{data.title}}" title="{{data.title}}">
    </div>
    <div class="card-box">
        <h4 class="card-title pb-3 mbr-fonts-style display-7">
            {{data.title}}
        </h4>
        <p class="mbr-text mbr-fonts-style display-7">
            {{data.description}}</br>
        </p>
    </div>
</div>
            </div>

        </div> <!-- End of List -->
    </div> <!-- End of List -->
</section> <!-- End of List --> 
<!-- Finish (Gallery-Cards-4) -->
<!-- Start (Section-Title) -->
<section class="engine"><a href="https://miniapps.red">miniapps.red</a></section><section class="mbr-section article content10 cid-qY7O9F5zbK" id="content10-e">
    <div class="container">
        <div class="inner-container" style="width: 66%;">
            <hr class="line" style="width: 25%;">
            <div class="section-text align-center mbr-white mbr-fonts-style display-5">All miniapps</div>
            <hr class="line" style="width: 25%;">
        </div>
    </div>
</section> 
<!-- Finish (Section-Title) -->
<!-- Start (Gallery-Cards-6) -->
<section class="features17 cid-qY7S57lmwU" id="features17-h">
    <div class="container-fluid">
        <div class="media-container-row">

            <div class="card p-3 col-12 col-md-6 col-lg-2" ng-repeat="data in datas0">
<div class="card-wrapper">
    <div class="card-img">
        <a href="{{data.url}}"><img src="{{data.image}}" alt="{{data.title}}" title="{{data.title}}"></a>
    </div>
    <div class="card-box">
        <h4 class="card-title pb-3 mbr-fonts-style display-7">
            {{data.title}}
        </h4>
        <p class="mbr-text mbr-fonts-style display-7">
            {{data.description}}</br>
        </p>
    </div>
</div>
</div>    

        </div> <!-- End of List -->
    </div> <!-- End of List -->
</section> <!-- End of List -->  
<!-- Finish (Gallery-Cards-6) -->
<!-- Start (Footer) -->
<section once="" class="cid-qY7Fn6kkqp" id="footer6-6">
    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
<p class="mbr-text mb-0 mbr-fonts-style display-7">
    © Copyright 2017 Miniapps.red - All Rights Reserved
</p>
            </div>
        </div>
    </div>
</section>  
<!-- Finish (Footer) -->
   

    <script src="assets/web/assets/jquery/jquery.min.js"></script>
    <script src="assets/popper/popper.min.js"></script>
    <script src="assets/tether/tether.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/smoothscroll/smooth-scroll.js"></script>
    <script src="assets/viewportchecker/jquery.viewportchecker.js"></script>
    <script src="assets/theme/js/script.js"></script>
    
    <input name="animation" type="hidden">
</body>
</html>
        
```


