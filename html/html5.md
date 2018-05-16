
# html5


### ReAdABLE Source

[http://mycodesnippets.space/html5.red](https://github.com/lepinekong/mycodesnippets/blob/master/html5.red)


### html5



```

            <!doctype html>
            <html lang="fr">
            <head>
            <meta charset="utf-8">

            <title>Hello World</title>
            <meta name="description" content="description of the content">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="author" content="me">
            <!--[if lt IE 9]>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
            <![endif]-->
            </head>

            <body>
            </body>
            </html>
        
```


VSCode Snippet:


```

            "html5": {
"prefix": "html5",
"body": [
    "            <body>\r",
    "            </body>\r",
    "            </html>   \r",
    "\r",
    "            <!doctype html>\r",
    "            <html lang=\"${1|fr,en|}\">\r",
    "            <head>\r",
    "            <meta charset=\"utf-8\">\r",
    "\r",
    "            <title>${2:Hello}</title>\r",
    "            <meta name=\"description\" content=\"${3:Description}\">\r",
    "            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r",
    "            <meta name=\"author\" content=\"${4:Author}\">\r",
    "            <!--[if lt IE 9]>\r",
    "<script src=\"https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js\"></script>\r",
    "            <![endif]-->\r",
    "            </head>\r",
    "\r",
    "            <body>\r",
    "            </body>\r",
    "            </html> "
],
"description": "html5"
            }            
        
```


If you want to recreate it with Easy Snippet, start from this snippet:


```

            <!doctype html>
            <html lang="{1|fr,en|}">
            <head>
            <meta charset="utf-8">

            <title>{2:Hello}</title>
            <meta name="description" content="{3:Description}">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="author" content="{4:Author}">
            <!--[if lt IE 9]>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
            <![endif]-->
            </head>
            <body>
            </body>
            </html> 
        
```


