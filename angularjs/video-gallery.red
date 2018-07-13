Red [
    Title: "video-gallery.red"
]

Article: [

    Title: {AngularJs Video Gallery}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/angularjs/video-gallery.red](https://github.com/lepinekong/mycodesnippets/blob/master/angularjs/video-gallery.red)
        }
        .Published-Url: http://mycodesnippets.space/angularjs/video-gallery
    ]  


    demo: [
        .title: {Demo}
        .text: {Visit: }
        .links: [
            http://mycodesnippets.space/angularjs/src/video-gallery/index.html
        ]
        .image: https://i.imgur.com/POEiiM0.jpg
    ]      
    
    code-snippet: [

        .title: {Source Code}
        .text: {The html skeleton was initially created with [mobirise](https://mobirise.com/) 
        before customizing it with angularjs }
        .text: {with Json Data and AngularJs Controller : }
        .image: https://i.imgur.com/fLkUV9u.png
        .text: {Html and AngularJs ng-repeat}
        .image: https://i.imgur.com/qtw74SE.png
        .links: [
            {View index.html source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/video-gallery/index.html
            {Copy index.html source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/video-gallery/index.html
            {Download source and assets} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/video-gallery.zip

        ]        
        .code/html: {
<!DOCTYPE html>
<html ng-app="MyApp" ng-controller="myCtrl">

<head>
    <!-- Site made with Mobirise Website Builder v4.6.5, https://mobirise.com -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Mobirise v4.6.5, mobirise.com">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" href="assets/images/logo.png" type="image/x-icon">
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
    <script>
        videos = [
            {
                "id": "8Y3qUdPbjD0",
                "title": "Le chevalier d'Eon",
                "description": "Membre du Secret du roi, une organisation dirigée par Louis XV, le chevalier d'Eon est le personnage le plus fantasque du XVIIIe siècle. Pour obtenir de hautes responsabilités, il a su séduire la monarchie. Mais il a également réussi à faire trembler le royaume, notamment en vivant un jour dans des habits d'homme et un autre dans des vêtements de femme."
            },
            {
                "id": "8pIhHtapVzE",
                "title": "Jeanne d'Arc, femme providentielle ?",
                "description": "Tout le monde connaît la légende de Jeanne d’Arc, accomplissant son destin selon la volonté de Dieu. Mais qui connaît le personnage de Yolande d’Aragon, la belle-mère de Charles VII ? Oubliée de l’Histoire, on retrouve pourtant son nom à toutes les étapes du mythe Jeanne d’Arc."
            },
            {
                "id": "SLWbwNtMtzo",
                "title": "Talleyrand : le diable boiteux",
                "description": "« De la merde dans un bas de soie ! » dit de lui Napoléon qui l’a pourtant utilisé comme bien des régimes qui l’ont précédé... et qui lui succèderont. Il faut dire que le prince de Talleyrand, aussi évêque d’Autun, alors qu’il a dégrafé plus de jupons que de soutanes, est un diplomate aux talents partout reconnus sur la planète."
            }
        ]
    </script>

    <script>
        var app = angular.module('MyApp', []);
        app.controller('myCtrl', function ($scope, $sce) {
            console.log(1);
            function Video(id, title, description) {
                debugger;
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
<section ng-repeat="video in videos">
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
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 