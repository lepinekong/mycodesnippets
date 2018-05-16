Red [
    Title: "vscode.markdown-index"
]

Article: [

    Title: {vscode snippet for ReAdABLE index skeleton}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/vscode.markdown-index.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.markdown-index.red)
        }
        .Published-Url: http://mycodesnippets.space/vscode.markdown-index
    ]    
    
    vscode.markdown-index: [

        .title: {vscode.markdown-index}
        .text: {Copy and paste this snippet in red.json (don't forget the "," separator):}
        .code: {
            "markdown-index": {
                "prefix": "markdown-index",
                "body": [
                    "Red [\r",
                    "    Title: \"index.red\"\r",
                    "]\r",
                    "\r",
                    "Article: [\r",
                    "\r",
                    "    Title: {}\r",
                    "\r",
                    "    Category-1: [\r",
                    "        .title: {}\r",
                    "        .text: {[](./)}       \r",
                    "    ]\r",
                    "\r",
                    "]\r",
                    "\r",
                    "\r",
                    "do read http://readablehumanformat.com/lib.red\r",
                    "markdown-gen"
                ],
                "description": "markdown-index"
            }                            
        }
        .text: {If you need to recreate it with Easy Snippet, start with this snippet: }
        .code: {
            Red [
                Title: "{TM_DIRECTORY:default}"
            ]

            Article: [

                Title: {Index of {TM_DIRECTORY:default} code snippets}

                {2:caption}: [
                    .title: {{1:title}}
                    .text: {[{2:caption}](./{3:filenamewithoutextension})}       
                ]

            ]                
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen