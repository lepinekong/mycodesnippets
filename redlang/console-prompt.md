
# Console Prompt Customization


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/console-prompt.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/console-prompt.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/src/console-prompt.red

![https://i.imgur.com/UwpyYEs.png](https://i.imgur.com/UwpyYEs.png)
                    
![https://i.imgur.com/dP1AGMH.png](https://i.imgur.com/dP1AGMH.png)
                    
![https://i.imgur.com/f45frTN.png](https://i.imgur.com/f45frTN.png)
                    

### Code Snippet

![https://i.imgur.com/VSMS0ax.png](https://i.imgur.com/VSMS0ax.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/console-prompt.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/console-prompt.red)
                        


```redlang

system/console/prompt: does [

    now-time: now/time
    either ((now-time > 12:00) and (now-time < 14:00)) [
        rejoin [now-time " Lunch Time!!! >> "]
    ][
        rejoin [to-local-file system/options/path " > " now-time " >> "]
    ]
]

        
```


