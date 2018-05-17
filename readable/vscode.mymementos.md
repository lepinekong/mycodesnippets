
# vscode.mymementos


### ReAdABLE Source

[http://mycodesnippets.space/vscode.mymementos.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.mymementos.red)


### vscode mymementos snippet:



```

            "myMementos": {
"prefix": "myMementos",
"body": [
    "Red [\r",
    "    Title: \"${TM_FILENAME:default}\"\r",
    "]\r",
    "\r",
    "Memento: [\r",
    "\r",
    "    Title: {${TM_FILENAME:default}}\r",
    "\r",
    "    Step-1: [\r",
    "        .title: {}\r",
    "        .text: {\r",
    "        }\r",
    "    ]\r",
    "]"
],
"description": "myMementos"
            }
        
```


to recreate it with Easy Snippet:


```

            Red [
Title: "{TM_FILENAME:default}"
            ]

            Memento: [

Title: {{TM_FILENAME:default}}

Step-1: [
    .title: {}
    .text: {
    }
]
            ]            
        
```


