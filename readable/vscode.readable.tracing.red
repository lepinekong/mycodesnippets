Red [
    Title: "vscode.readable.tracing.red"
]

Article: [

    Title: {Vscode Snippet for ReAdABLE Human Format code tracing with do-trace method}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/vscode.readable.tracing.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.readable.tracing.red)
        }
        .Published-Url: http://mycodesnippets.space/vscode.readable.tracing
    ]    
    
    vscode.readable.tracing: [

        .title: {vscode.readable.tracing}
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

        .text: {Example output:       
        }
        .code: {
            do-trace 39 [
                ?? myvarname
            ] %vscode.readable.tracing.red             
        }

    ]
]


do read http://readablehumanformat.com/lib.red
markdown-gen
