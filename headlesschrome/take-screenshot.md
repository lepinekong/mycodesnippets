
# Take Screenshot with Headless Chrome


## What to do if --screenshot doesn't work ?


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/headlesschrome/take-screenshot.red](https://github.com/lepinekong/mycodesnippets/blob/master/headlesschrome/take-screenshot.red)


### In command line type for example:



```

            chrome --headless --disable-gpu --screenshot="C:\test\screen.png" "http://mycodesnippets.space/"
        
```


to specify size use --window-size=width,height:


```

            chrome --headless --disable-gpu --screenshot="C:\test\screen.png" --window-size=1280,1696 "http://mycodesnippets.space/"
        
```


![https://i.imgur.com/GKVgUSR.png](https://i.imgur.com/GKVgUSR.png)
                    
