
# vscode.mycodesnippets


### ReAdABLE Source

[http://mycodesnippets.space/vscode.mycodesnippets.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.mycodesnippets.red)


### vscode.mycodesnippets



```

            "mycodesnippets": {
"prefix": "mycodesnippets",
"body": [
    "Red [\r",
    "    Title: \"${TM_FILENAME_BASE:default}\"\r",
    "]\r",
    "\r",
    "Article: [\r",
    "\r",
    "    Title: {${TM_FILENAME_BASE:default}}\r",
    "\r",
    "    Source: [\r",
    "        .title: {ReAdABLE Source}\r",
    "        .text: {[http://mycodesnippets.space/${TM_FILENAME:default}](https://github.com/lepinekong/mycodesnippets/blob/master/${TM_FILENAME:default})\r",
    "        }\r",
    "        .Published-Url: http://mycodesnippets.space/${TM_FILENAME_BASE:default}\r",
    "    ]    \r",
    "    \r",
    "    ${TM_FILENAME_BASE:default}: [\r",
    "\r",
    "        .title: {${TM_FILENAME_BASE:default}}\r",
    "        .code: {\r",
    "            \t            \r",
    "        }\r",
    "    ]\r",
    "]"
],
"description": "mycodesnippets"
            }            
        
```


Note: generate it with Easy Snippet and below code: 


```

            Red [
Title: ""
            ]

            Article: [

Title: {}

Source: [
    .title: {ReAdABLE Source}
    .text: {[http://mycodesnippets.space/{TM_FILENAME:default}](https://github.com/lepinekong/mycodesnippets/blob/master/{TM_FILENAME:default})
    }
    .Published-Url: http://mycodesnippets.space/{TM_FILENAME_BASE:default}
]    

{TM_FILENAME_BASE:default}: [

    .title: {}
    .code: {
        
    }
]
            ]            
        
```


