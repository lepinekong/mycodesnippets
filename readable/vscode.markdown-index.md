
# vscode snippet for ReAdABLE index skeleton


### ReAdABLE Source

[http://mycodesnippets.space/vscode.markdown-index.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.markdown-index.red)


### vscode.markdown-index

Copy and paste this snippet in red.json (don't forget the "," separator):


```

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
        
```


If you need to recreate it with Easy Snippet, start with this snippet: 


```

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
        
```


