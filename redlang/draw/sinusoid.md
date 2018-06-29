
# draw sinusoid


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/draw/sinusoid.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/sinusoid.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/draw/src/sinusoid.red

![https://i.imgur.com/Wcmgts3.png](https://i.imgur.com/Wcmgts3.png)
                    

### Code Snippet

![https://i.imgur.com/id8t8uF.png](https://i.imgur.com/id8t8uF.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/src/sinusoid.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/draw/src/sinusoid.red)
                        


```red

title: {draw sinusoid}

win: compose/deep [title (title)]

plot: [
    pen black
    line 0x60 360x60 ; x axis

    pen blue
    line
]

repeat x 360 [ ; 360 points
    append plot as-pair x 60 - (50 * sine x)
]

append win compose/deep [
    box 360x120 draw [(plot)]
]

; or using reduce
; append win compose/deep [
;     box 360x120 (reduce ['draw plot])
; ]

view win 

        
```


