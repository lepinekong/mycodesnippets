
# shape rotation


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/draw/shape-rotation.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/shape-rotation.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/draw/src/shape-rotation.red

![https://i.imgur.com/B3RwSiG.png](https://i.imgur.com/B3RwSiG.png)
                    

### Discussion

- [https://gitter.im/red/help?at=5b44b42363042f2df365e019](https://gitter.im/red/help?at=5b44b42363042f2df365e019)
                        

### Code Snippet

![https://i.imgur.com/nybGdyL.png](https://i.imgur.com/nybGdyL.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/src/shape-rotation.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/draw/src/shape-rotation.red)
                        


```redcode

width: 100

view compose/deep [
    title "Shape rotation demo"
    base 800x500 white draw [

        shape [move 375x225]

        pen blue
        shape [
            'hline (width)
            'vline (width)
            'hline (0 - width)
            'vline (0 - width)
        ]        

        pen red
        rotate 30 (make pair! reduce [ (375 + width) (225 + width)])
        shape [
            'hline (width)
            'vline (width)
            'hline (0 - width)
            'vline (0 - width)
        ]

        rotate -30 (make pair! reduce [ (375 + width) (225 + width)])

        pen black
        arc (as-pair 375 + width 225 + width) 50x50 180 30
    ]
]


        
```


