
# vscode.mycodesnippets-index


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/readable/vscode.mycodesnippets-index.red](https://github.com/lepinekong/mycodesnippets/blob/master/readable/vscode.mycodesnippets-index.red)


### Paste this snippet in red User.Snippets (don’t forget the “,” separator):



```

    "mycodesnippets-index": {
        "prefix": "mycodesnippets-index",
        "body": [
            "Red [\r",
            "Title: \"${TM_DIRECTORY:default}\"\r",
            "            ]\r",
            "\r",
            "Source: [\r",
            ".title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}\r",
            ".text: {[http://mycodesnippets.space/${TM_FILENAME:default}](https://github.com/lepinekong/mycodesnippets/blob/master/${TM_FILENAME:default})\r",
            "}\r",
            ".Published-Url: http://mycodesnippets.space/${TM_FILENAME_BASE:default}\r",
            "            ]\r",
            "            \r",
            "Article: [\r",
            "\r",
            "    Title: {Index of ${TM_DIRECTORY:default}}\r",
            "\r",
            "    ${1:category}: [\r",
            "        .title: {${1:category}} \r",
            "        .links: [\r",
            "            {${2:filenamewithoutextension}} %./${2:filenamewithoutextension}\r",
            "\r",
            "        ]    \r",
            "    ]\r",
            "\r",
            "]\r",
            "        \r",
            "do read http://readablehumanformat.com/lib.red\r",
            "markdown-gen"
        ],
        "description": "mycodesnippets-index"
    }   
        
```



### If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):



```

Red [
Title: "{TM_DIRECTORY:default} Index"
            ]

Source: [
.title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
.text: {[http://mycodesnippets.space/{TM_FILENAME:default}](https://github.com/lepinekong/mycodesnippets/blob/master/{TM_FILENAME:default})
}
.Published-Url: http://mycodesnippets.space/{TM_FILENAME_BASE:default}
            ]
            
Article: [

    Title: {Index of {TM_DIRECTORY:default}}

    {1:category}: [
        .title: {{1:category}} 
        .links: [
            {2:filenamewithoutextension} %./{2:filenamewithoutextension}

        ]    
    ]

]
        
do read http://readablehumanformat.com/lib.red
markdown-gen            
        
```


