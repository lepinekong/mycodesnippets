Red [
    Title: "html5"
]

Article: [

    Title: {html5}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/html5.red](https://github.com/lepinekong/mycodesnippets/blob/master/html5.red)
        }
        .Published-Url: http://mycodesnippets.space/html5
    ]    
    
    html5: [

        .title: {html5 blank snippet:}
        .code: {
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
        }
        .text: {To create VSCode Snippet:}
        .code: {
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
                    "                <script src=\"https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js\"></script>\r",
                    "            <![endif]-->\r",
                    "            </head>\r",
                    "\r",
                    "            <body>\r",
                    "            </body>\r",
                    "            </html> "
                ],
                "description": "html5"
            }            
        }

        .text: {If you want to recreate it with Easy Snippet, start from this snippet:}
        .code: {
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
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen
