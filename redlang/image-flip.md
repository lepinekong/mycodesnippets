
# Flip image in Red


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/red/image-flip.red](https://github.com/lepinekong/mycodesnippets/blob/master/red/image-flip.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/src/image-flip.red

![https://i.imgur.com/9SBAsof.png](https://i.imgur.com/9SBAsof.png)
                    

### Code Snippet

![https://i.imgur.com/35mJBVj.png](https://i.imgur.com/35mJBVj.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/image-flip.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/image-flip.red)
                        


```red

Red [
    Title: "image-flip.red"
    Needs: 'View
]

img1: load http://mycodesnippets.space/images/snapchat_128.png
img2: load http://mycodesnippets.space/images/youtube_128.png

view layout compose [
    image "Flip" img1 on-over [
        img: face/image
        either img = img1 [
            face/image: img2
        ][
            face/image: img1
        ]
    ] 
]
        
```


