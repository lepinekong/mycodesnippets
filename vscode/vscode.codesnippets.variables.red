Red [
    Title: "VSCode Code Snippets"
]

Article: [

    Title: {VSCode Code Snippets Variables}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/vscode.codesnippets.variables.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.codesnippets.variables.red)
        }
        .Published-Url: http://mycodesnippets.space/vscode.codesnippets.variables
    ]    
    
    Variables-Usage: [

        .title: {TM_FILENAME:default and TM_LINE_INDEX:default}
        .code: {
            "do-trace": {
                "prefix": "do-trace",
                "body": [
                    "            do-trace ${TM_LINE_INDEX:default} [\r",
                    "                ?? ",
                    "            ] %${TM_FILENAME:default}"
                ],
                "description": "do-trace"
            }	            
        }
        .text: {Reference Guide: }
        .link: [
            https://code.visualstudio.com/docs/editor/userdefinedsnippets
            "Creating your own snippets | code.visualstudio.com"
        ]
    ]
]

