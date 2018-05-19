Red [
    Title: "vscode.mybookmarks.red"
]

Article: [

    Title: {vscode.mybookmarks}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/readable/vscode.mybookmarks.red](https://github.com/lepinekong/mycodesnippets/blob/master/readable/vscode.mybookmarks.red)
        }
        .Published-Url: http://mycodesnippets.space/readable/vscode.mybookmarks
    ]    
    
    vscode.mybookmarks: [

        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {

        }
        .title: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
            Red [
                Title: "{TM_FILENAME:default}"
            ]

            Bookmarks: [

                Title: {{1:Title}}

                Source: [
                    .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
                    .text: {[http://mybookmarks.space/{2:category}/{TM_FILENAME:default}](https://github.com/lepinekong/mybookmarks/blob/master/{2:category}/{TM_FILENAME:default})
                    }
                    .Published-Url: http://mybookmarks.space/{2:category}/{TM_FILENAME_BASE:default}
                ]    
                
                {3:Sub-Category-1}: [

                    .title: {{3:Sub-Category-1}} 
                    ; remove /no-embed-youtube to embed youtube videos
                    .links/no-embed-youtube: [
                        Google http://google.com
                        {The amazing story of Modern Japan} https://www.youtube.com/watch?v=GHvnIm9UEoQ
                    ] 
                ]
            ]

            do read http://readablehumanformat.com/lib.red
            markdown-gen               
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 

{
    "mybookmarks": {
        "prefix": "mybookmarks",
        "body": [
            "Red [\r",
            "    Title: \"${1:Title}\"\r",
            "]\r",
            "\r",
            "Bookmarks: [\r",
            "\r",
            "    Title: {${TM_FILENAME_BASE:default}}\r",
            "\r",
            "    Source: [\r",
            "        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}\r",
            "        .text: {[http://mybookmarks.space/${2:category}/${TM_FILENAME:default}](https://github.com/lepinekong/mybookmarks/blob/master/${2:category}/${TM_FILENAME:default})\r",
            "        }\r",
            "        .Published-Url: http://mybookmarks.space/${2:category}/${TM_FILENAME_BASE:default}\r",
            "    ]    \r",
            "    \r",
            "    ${3:Sub-Category-1}: [\r",
            "\r",
            "        .title: {${3:Sub-Category-1}} \r",
            "        ; remove /no-embed-youtube to embed youtube videos\r",
            "        .links/no-embed-youtube: [\r",
            "            Google http://google.com\r",
            "            {The amazing story of Modern Japan} https://www.youtube.com/watch?v=GHvnIm9UEoQ\r",
            "        ] \r",
            "    ]\r",
            "]\r",
            "\r",
            "do read http://readablehumanformat.com/lib.red\r",
            "markdown-gen  "
        ],
        "description": "mybookmarks"
    }
} 
