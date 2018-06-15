Red [
    Title: "jekyll.leap-day.theme"
]

Article: [

    Title: {jekyll.leap-day.theme}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/jekyll.leap-day.theme.red](https://github.com/lepinekong/mycodesnippets/blob/master/jekyll.leap-day.theme.red)
        }
        .Published-Url: http://mycodesnippets.space/jekyll.leap-day.theme
    ]    
    
    jekyll.leap-day.theme: [

        .title: {jekyll.leap-day.theme}
        .text: {put the code below in _config.yml (be carefull no tabs):}
        .code: {
theme: jekyll-theme-leap-day
title: Welcome to 
description:                            
        }
        .text: {To automate this update, you can use this _config.red script:}
        .code: {
Red [
    Title: "_config.red"
]

; customize for your own blog (do not add tabs):
blog-properties: {
title: Welcome to My Bookmarks
description: MyBookmarks.Space
}

;instead of these two lines of code
;config-file: %_config.yml
;config: read config-file

;you can read and declare the file at once:
config: read (config-file: %_config.yml)
;or even (but less readable):
;config: read config-file: %_config.yml


unless find config "title" [
    append config blog-properties
    write config-file config
]
            
}
        .text: {To make header clickable to return to home and have no-cache, put this code in _layouts\default.html (not _layout):}
        .code: {
<!doctype html>
<html lang="{{ site.lang | default: "en-US" }}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="CACHE-CONTROL" content="MAX-AGE=0"/>
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
    <meta http-equiv="EXPIRES" content="Mon, 17 Sep 2012 12:00:00 GMT">

{% seo %}
    <link rel="stylesheet" href="{{ '/assets/css/style.css?v=' | append: site.github.build_revision | relative_url }}">
    <script src="https://code.jquery.com/jquery-3.3.0.min.js" integrity="sha256-RTQy8VOmNlT6b2PIRur37p6JEBZUE7o8wPgMvu18MC4=" crossorigin="anonymous"></script>
    <script src="{{ '/assets/js/main.js' | relative_url }}"></script>
    <!--[if lt IE 9]>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" integrity="sha256-3Jy/GbSLrg0o9y5Z5n1uw0qxZECH7C6OQpVBgNFYa0g=" crossorigin="anonymous"></script>
    <![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

  </head>
  <body>

      <header>
          <a href="/">
        <h1>{{ site.title | default: site.github.repository_name }}</h1>
        <p>{{ site.description | default: site.github.project_tagline }}</p>
    </a>
      </header>

      <div id="banner">
        <span id="logo"></span>

        <a href="{{ site.github.repository_url }}" class="button fork"><strong>View On GitHub</strong></a>
        {% if site.show_downloads %}
          <div class="downloads">
            <span>Downloads:</span>
            <ul>
              <li><a href="{{ site.github.zip_url }}" class="button">ZIP</a></li>
              <li><a href="{{ site.github.tar_url }}" class="button">TAR</a></li>
            </ul>
          </div>
        {% endif %}
      </div><!-- end banner -->

    <div class="wrapper">
      <nav>
        <ul></ul>
      </nav>
      <section>
        {{ content }}

      </section>
      <footer>
        {% if site.github.is_project_page %}
          <p>Project maintained by <a href="{{ site.github.owner_url }}">{{ site.github.owner_name }}</a></p>
        {% endif %}
        <p><small>Hosted on GitHub Pages &mdash; Theme by <a href="https://twitter.com/michigangraham">mattgraham</a></small></p>
      </footer>
    </div>

    {% if site.google_analytics %}
      <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', '{{ site.google_analytics }}', 'auto');
        ga('send', 'pageview');
      </script>
    {% endif %}
  </body>
</html>
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen