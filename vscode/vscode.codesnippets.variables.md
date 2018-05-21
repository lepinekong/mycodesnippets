
# VSCode Snippets Predefined Variables


### ReAdABLE Source

[http://mycodesnippets.space/vscode.codesnippets.variables.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.codesnippets.variables.red)


### Most usefull variables I use: 



```

            - ${TM_FILENAME:default} (The filename of the current document)
            - ${TM_FILENAME_BASE:default} (same as TM_FILENAME without extension)
            - ${CURRENT_YEAR_SHORT:default} (The current year's last two digits)
            - ${CURRENT_MONTH:default} (The month as two digits)
            - ${CURRENT_DATE:default} (The day of the month)
            - ${CURRENT_HOUR:default} (The current hour in 24-hour clock format)
            - ${CURRENT_MINUTE:default} (The current minute)
            - ${CURRENT_SECOND:default} (The current second)
            - ${TM_LINE_NUMBER:default} (line number)
        
```


Full List below:
![https://i.imgur.com/oinTKKP.png](https://i.imgur.com/oinTKKP.png)
                    

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
    ??
] %ReAdABLE.Human.Format.lib.red            
        
```


Other usefull variables for date:


```

            ${CURRENT_YEAR_SHORT:default}.${CURRENT_MONTH:default}.${CURRENT_DATE:default}
        
```


Reference Guide: 
- [Creating your own snippets - code.visualstudio.com](https://code.visualstudio.com/docs/editor/userdefinedsnippets)
                        
