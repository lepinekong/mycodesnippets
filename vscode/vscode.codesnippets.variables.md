
# VSCode Snippets Predefined Variables


### ReAdABLE Source

[http://mycodesnippets.space/vscode.codesnippets.variables.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.codesnippets.variables.red)


### Example with TM_FILENAME:default and TM_LINE_INDEX:default



```

"do-trace": {
"prefix": "do-trace",
"body": [
    "            do-trace ${TM_LINE_INDEX:default} [\r",
    "?? ",
    "            ] %${TM_FILENAME:default}"
],
"description": "do-trace"
}	            
        
```


Example output:   



```

do-trace 757 [
    ask "line 757"
] %ReAdABLE.Human.Format.lib.red            
        
```


Reference Guide: 
- [Creating your own snippets | code.visualstudio.com](https://code.visualstudio.com/docs/editor/userdefinedsnippets)
                        
