Red [
    Title: "vscode.snippet.in.readable.format.red"
]

VSCode.Snippets: [
    .language: "html"
    
    Html: [
        .prefix: "html"
        .body: {
            <!doctype html>
            <html lang="fr">
            <head>
                <meta charset="utf-8">
                <title>Hello World</title>
                <meta name="description" content="The HTML5 Herald">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <meta name="author" content="me">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js">
                </script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
                </script>
                <!--[if lt IE 9]>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js">
                </script>
                <![endif]-->
            </head>
            <body>
                <script src="">
                </script>
            </body>
            </html>           
        }
        .description: {html}
    ]

    Html5: [
        .prefix: "html5"
        .body: {
            <body>
            </body>
            </html>   

            <!doctype html>
            <html lang="${1|fr,en|}">
            <head>
            <meta charset="utf-8">

            <title>Hello</title>
            <meta name="description" content="Description">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="author" content="Author">
            <!--[if lt IE 9]>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
            <![endif]-->
            </head>

            <body>
            </body>
            </html>             
        }
        .description: {Html 5, you can choose the html lang: fr or en}
    ]
]