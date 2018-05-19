
# Take Screenshot with Headless Chrome


## What to do if --screenshot doesn't work ?


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/headlesschrome/take-screenshot.red](https://github.com/lepinekong/mycodesnippets/blob/master/headlesschrome/take-screenshot.red)


### using --screenshot=somepath

In command line type for example:


```

            chrome --headless --disable-gpu --screenshot="C:\test\screen.png" "http://mycodesnippets.space/"
        
```



### with --window-size=width,height:

type for example --window-size=1280,1696:


```

            chrome --window-size=1280,1696 --screenshot="C:\test\screen.png" --headless --disable-gpu "http://mycodesnippets.space/"
        
```


![https://i.imgur.com/GKVgUSR.png](https://i.imgur.com/GKVgUSR.png)
                    

### References:

- [developers.google.com](https://developers.google.com/web/updates/2017/04/headless-chrome)
                        
