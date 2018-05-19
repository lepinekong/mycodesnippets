
Red [
    Title: "vscode.mycodesnippets"
]

Source: [
    .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
    .text: {[http://readablehumanformat.com/{TM_FILENAME:default}](https://github.com/lepinekong/readablehumanformat/blob/master/{TM_FILENAME:default})
    }
    .Published-Url: http://readablehumanformat.com/{TM_FILENAME_BASE:default}
]

Article: [

    Title: {vscode.mycodesnippets}  
    
    vscode.mycodesnippets: [

        .title: {Vscode for creating a skeleton for mycodesnippets}
        .code: {
            "mycodesnippets": {
                "prefix": "mycodesnippets",
                "body": [
                    "Red [\r",
                    "    Title: \"${TM_FILENAME:default}\"\r",
                    "]\r",
                    "\r",
                    "Article: [\r",
                    "\r",
                    "    Title: {${TM_FILENAME_BASE:default}}\r",
                    "\r",
                    "    Source: [\r",
                    "        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}\r",
                    "        .text: {[http://mycodesnippets.space/${1:category}/${TM_FILENAME:default}](https://github.com/lepinekong/mycodesnippets/blob/master/${1:category}/${TM_FILENAME:default})\r",
                    "        }\r",
                    "        .Published-Url: http://mycodesnippets.space/${1:category}/${TM_FILENAME_BASE:default}\r",
                    "    ]    \r",
                    "    \r",
                    "    ${TM_FILENAME_BASE:default}: [\r",
                    "\r",
                    "        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}\r",
                    "        .code: {\r",
                    "\r",
                    "        }\r",
                    "        .title: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}\r",
                    "        .code: {\r",
                    "            \r",
                    "        }\r",
                    "    ]\r",
                    "]\r",
                    "\r",
                    "do read http://readablehumanformat.com/lib.red\r",
                    "markdown-gen "
                ],
                "description": "mycodesnippets"
            }                           
        }
        .text: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {

            Red [
                Title: "{TM_FILENAME:default}"
            ]

            Article: [

                Title: {{TM_FILENAME_BASE:default}}

                Source: [
                    .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
                    .text: {[http://mycodesnippets.space/{1:category}/{TM_FILENAME:default}](https://github.com/lepinekong/mycodesnippets/blob/master/{1:category}/{TM_FILENAME:default})
                    }
                    .Published-Url: http://mycodesnippets.space/{1:category}/{TM_FILENAME_BASE:default}
                ]    
                
                {TM_FILENAME_BASE:default}: [

                    .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
                    .code: {

                    }
                    .title: {If you need to recreate it with [Easy Snippet](), start with this snippet (don’t forget to add $ in front of variables):}
                    .code: {

                    }
                ]
            ]

            do read http://readablehumanformat.com/lib.red
            markdown-gen            

        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen



