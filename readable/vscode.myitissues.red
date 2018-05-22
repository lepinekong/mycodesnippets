Red [
    Title: "vscode.myitissues.red"
]

Article: [

    Title: {vscode.myitissues}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/readable/vscode.myitissues.red](https://github.com/lepinekong/mycodesnippets/blob/master/readable/vscode.myitissues.red)
        }
        .Published-Url: http://mycodesnippets.space/readable/vscode.myitissues
    ]    
    
    vscode.myitissues: [

        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {
    "myitissues": {
        "prefix": "myitissues",
        "body": [
            "Red [\r",
            "    Title: \"${TM_FILENAME_BASE:default}.red\"\r",
            "]\r",
            "\r",
            "Article: [\r",
            "\r",
            "    Title: {${TM_FILENAME_BASE:default}}\r",
            "\r",
            "    Source: [\r",
            "        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}\r",
            "        .text: {[http://mycodesnippets.space/readable/${TM_FILENAME_BASE:default}.red](https://github.com/lepinekong/mycodesnippets/blob/master/readable/${TM_FILENAME_BASE:default}.red)\r",
            "        }\r",
            "        .Published-Url: http://mycodesnippets.space/readable/${TM_FILENAME_BASE:default}\r",
            "    ]    \r",
            "    \r",
            "    vscode.myitissues: [\r",
            "\r",
            "        .title: {${TM_FILENAME_BASE:default}}\r",
            "        .text: {Description}\r",
            "        .code: {\r",
            "\r",
            "        }\r",
            "    ]\r",
            "]\r",
            "\r",
            "do read http://readablehumanformat.com/lib.red\r",
            "markdown-gen \r",
            ""
        ],
        "description": "myitissues"
    }   
        }
        .code: {
Red [
    Title: "{TM_FILENAME_BASE:default}.red"
]

Article: [

    Title: {{TM_FILENAME_BASE:default}}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/readable/{TM_FILENAME_BASE:default}.red](https://github.com/lepinekong/mycodesnippets/blob/master/readable/{TM_FILENAME_BASE:default}.red)
        }
        .Published-Url: http://mycodesnippets.space/readable/{TM_FILENAME_BASE:default}
    ]    
    
    vscode.myitissues: [

        .title: {{TM_FILENAME_BASE:default}}
        .text: {Description}
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
