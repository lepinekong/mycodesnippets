
# run-python-command


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/python/run-python-command.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/python/run-python-command.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/python/src/run-python-command.red

![https://i.imgur.com/JXRjkqg.png](https://i.imgur.com/JXRjkqg.png)
                    

### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/python/src/run-python-command.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/python/src/run-python-command.red)
                        


```red

out: copy "" call/output {C:\Python36\python.exe -c "print('Hello from Python')"} out
?? out
        
```


