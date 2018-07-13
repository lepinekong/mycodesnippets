
# embed-in-html


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/embed-in-html.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/embed-in-html.red)


### Demo

You can browse to
- [https://readable.red](https://readable.red)
                        
![https://i.imgur.com/XzKUaN0.png](https://i.imgur.com/XzKUaN0.png)
                    
and use the same url for [red-lang](https://www.red-lang.org/p/download.html) by typing in console: 
>do https://readable.red

![https://i.imgur.com/O2Gi2yV.png](https://i.imgur.com/O2Gi2yV.png)
                    
so that it is also shorter to type and memorize than:
>do https://readable.red/lib.red


### Code Snippet

![https://i.imgur.com/E1eA7aZ.png](https://i.imgur.com/E1eA7aZ.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/embed-in-html.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/embed-in-html.red)
                        


```html

<!doctype html>

<html lang="fr">
    <head>
    <meta charset="utf-8">

    <title>Hello World</title>
    <meta name="description" content="The HTML5 Herald">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="me">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="CACHE-CONTROL" content="MAX-AGE=0"/>
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
    <meta http-equiv="EXPIRES" content="Mon, 17 Sep 2012 12:00:00 GMT">    

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
	<link href='http://fonts.googleapis.com/css?family=Abel|Open+Sans:400,600' rel='stylesheet'>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
    <![endif]-->
    </head>

    <body>
        There are 2 html files:
        <u>
            <li>
embed-in-html/index.html
            </li>
            <li>
embed-in-html.html
            </li>
        </u>

        <img src="https://i.imgur.com/mg3SbOx.png" alt="" width=100%>
        Type in red console one of these command:
        <pre>
            do https://mycodesnippets.space/redlang/src/embed-in-html
            do https://mycodesnippets.space/redlang/src/embed-in-html/
            do https://mycodesnippets.space/redlang/src/embed-in-html.html
        </pre>
    </body>
</html>    

<!--
    Red [
        title: "Embed red in html demo"
        description: {This red code will be executed ignoring all the html code above red header}
    ]

    set to-word rejoin ["--" ">"] none ; this to avoid error message

    print "Hello from Red embedded in html page"

-->
        
```


