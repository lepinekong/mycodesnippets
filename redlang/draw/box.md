
# How to draw colored boxes in Red


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/draw/box.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/box.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/draw/src/box.red

![https://i.imgur.com/VtH3BDz.png](https://i.imgur.com/VtH3BDz.png)
                    

### Code Snippet

![https://i.imgur.com/ajVg7Mz.png](https://i.imgur.com/ajVg7Mz.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/src/box.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/draw/src/box.red)
                        


```red

Red [
    Title: "box.red"
    Needs: 'View
    Colors-inspiration: [
        https://twitter.com/Jamal7x7Jamal/status/1008269417124331520
    ]
]

title: "How to draw colored boxes"
dark-blue: 1.23.64
light-blue: 104.172.248
light-magenta: 170.164.234

bigRect-pos1: 0x0
bigRect-pos2: 640x480

smallRect-pos1: 100x100
smallRect-pos2: make pair! compose [(bigRect-pos2/1 - smallRect-pos1/1) (bigRect-pos2/2 - smallRect-pos1/2)]

microRect-pos1: 200x200
microRect-pos2: make pair! compose [(bigRect-pos2/1 - microRect-pos1/1) (bigRect-pos2/2 - microRect-pos1/2)]


win: compose/deep [

    title (title)

    base (bigRect-pos2)
    draw [

        fill-pen (dark-blue) 
        box (bigRect-pos1) (bigRect-pos2)

        fill-pen (light-blue)
        box (smallRect-pos1) (smallRect-pos2)

        fill-pen (light-magenta)
        box (microRect-pos1) (microRect-pos2)        
    ]

]

view layout win

        
```

