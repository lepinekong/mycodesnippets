Red [
    Title: "bootstrap.blank"
]

Article: [

    Title: {bootstrap.blank}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/bootstrap.blank.red](https://github.com/lepinekong/mycodesnippets/blob/master/bootstrap.blank.red)
        }
        .Published-Url: http://mycodesnippets.space/bootstrap.blank
    ]    
    
    bootstrap.blank: [

        .title: {bootstrap.blank}
        .text: {This is the blank bootstrap skeleton:}
        .code: {
            <!doctype html>
            <html lang="{1|fr,en|}">
            <head>
            <meta charset="utf-8">

            <title>{2:Hello}</title>
            <meta name="description" content="{3:Description}">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="author" content="{4:Author}">

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>            
            
            <!--[if lt IE 9]>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
            <![endif]-->

            </head>

            <body>
            
            </body>

            </html>                            
        }
        .text: {This is the VSCode Snippet:}
        .code: {
            "bootstrap": {
                "prefix": "bootstrap",
                "body": [
                    "            <!doctype html>\r",
                    "            <html lang=\"${1|fr,en|}\">\r",
                    "            <head>\r",
                    "            <meta charset=\"utf-8\">\r",
                    "\r",
                    "            <title>${2:Hello}</title>\r",
                    "            <meta name=\"description\" content=\"${3:Description}\">\r",
                    "            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r",
                    "            <meta name=\"author\" content=\"${4:Author}\">\r",
                    "\r",
                    "            <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\r",
                    "            <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js\"></script>\r",
                    "            <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>            \r",
                    "            \r",
                    "            <!--[if lt IE 9]>\r",
                    "                <script src=\"https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js\"></script>\r",
                    "            <![endif]-->\r",
                    "\r",
                    "            </head>\r",
                    "\r",
                    "            <body>\r",
                    "            \r",
                    "            </body>\r",
                    "\r",
                    "            </html> \r",
                    ""
                ],
                "description": "bootstrap"
            }    
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen
