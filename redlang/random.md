
# random


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/random.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/random.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/src/random.red

![https://i.imgur.com/TBIs61X.png](https://i.imgur.com/TBIs61X.png)
                    

### Code Snippet

![https://i.imgur.com/MzUwIHZ.png](https://i.imgur.com/MzUwIHZ.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/random.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/random.red)
                        


```red

Red [
    Title: "random.red"
]

random/seed now/time
roll-2-dices: copy/part random [1 2 3 4 5 6] 2

;or
;do https://redlang.red/range
;dices: copy/part range/random 1 6 2

?? roll-2-dices ; ex.: [1 5]

        
```


