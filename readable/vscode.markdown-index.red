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
        .text: {Paste this snippet in red User.Snippets (don't forget the "," separator):}
        .code: {
            "markdown-index": {
                "prefix": "markdown-index",
                "body": [
                    "Red [\r",
                    "    Title: \"${TM_DIRECTORY:default}\"\r",
                    "]\r",
                    "\r",
                    "Source: [\r",
                    "    .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}\r",
                    "    .text: {[http://${1:domainname-wo-extension}.${2:domainname-extension}/${TM_FILENAME:default}](https://github.com/lepinekong/${1:domainname-wo-extension}/blob/master/${TM_FILENAME:default})\r",
                    "    }\r",
                    "    .Published-Url: http://${1:domainname-wo-extension}.${2:domainname-extension}/${TM_FILENAME_BASE:default}\r",
                    "]\r",
                    "\r",
                    "Article: [\r",
                    "\r",
                    "    Title: {Index of ${TM_DIRECTORY:default}}\r",
                    "\r",
                    "    {2:caption}: [\r",
                    "        .title: {${3:title}}\r",
                    "        .text: {[${4:caption}](./${5:filenamewithoutextension})}   \r",
                    "        ; remove /no-embed-youtube to embed youtube videos\r",
                    "        .links/no-embed-youtube: [\r",
                    "            Google http://google.com\r",
                    "            {The amazing story of Modern Japan} https://www.youtube.com/watch?v=GHvnIm9UEoQ\r",
                    "        ]    \r",
                    "    ]\r",
                    "\r",
                    "]  "
                ],
                "description": "markdown-index"
            }            
        }

        .text: {If you need to recreate it with Easy Snippet, start with this snippet 
        (don't forget to add $ in front of variables): }
        .code: {
            Red [
                Title: "{TM_DIRECTORY:default}"
            ]

            Source: [
                .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
                .text: {[http://{1:domainname-wo-extension}.{2:domainname-extension}/{TM_FILENAME:default}](https://github.com/lepinekong/{1:domainname-wo-extension}/blob/master/{TM_FILENAME:default})
                }
                .Published-Url: http://{1:domainname-wo-extension}.{2:domainname-extension}/{TM_FILENAME_BASE:default}
            ]
            
            Article: [

                Title: {Index of {TM_DIRECTORY:default}}

                {2:caption}: [
                    .title: {{3:title}}
                    .text: {[{4:caption}](./{5:filenamewithoutextension})}   
                    ; remove /no-embed-youtube to embed youtube videos
                    .links/no-embed-youtube: [
                        Google http://google.com
                        {The amazing story of Modern Japan} https://www.youtube.com/watch?v=GHvnIm9UEoQ
                    ]    
                ]

            ]                
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen
