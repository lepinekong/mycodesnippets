
# Vscode Snippet for ReAdABLE Human Format code tracing with do-trace method


### ReAdABLE Source

[http://mycodesnippets.space/vscode.readable.tracing.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.readable.tracing.red)


### vscode.readable.tracing



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

            do-trace 39 [
                ?? myvarname
            ] %vscode.readable.tracing.red             
        
```


