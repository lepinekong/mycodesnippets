Red [
    Title: "shape.red"
]

Article: [

    Title: {shape}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/draw/shape.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/shape.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/draw/shape
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/draw/src/shape.red}
        .image: https://i.imgur.com/vzuavPJ.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/src/shape.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/draw/src/shape.red
        ]        
        .code/red: {
Full-Size: 828x1709
zoom-factor: 2
Zoom-Half: make pair! reduce [ full-size/1 / zoom-factor full-size/2 / zoom-factor]
left-border-width: 18
right-border-width: (full-size/1 - 787) / zoom-factor
Top-border-height: 110
Bottom-border-height: (full-size/2 - 1515) / zoom-factor

client-area-position: make pair! reduce [left-border-width Top-border-height]
client-area-size: make pair! reduce [ 
    Zoom-Half/1 - left-border-width - right-border-width ;
    Zoom-Half/2 - top-border-height - bottom-border-height ;
]

light-gray: 250.250.250
light-blue: 0.162.232
img-iphone: load http://mycodesnippets.space/images/collections/mobile/iphone6/iphone6-black-background.png

win: compose/deep/only [
    title {Drawing shape}
    origin 0x0 space 0x0
    at 0x0 image (Zoom-Half) (img-iphone)
    at (Client-area-position) base white (client-area-size) draw [
        shape [
            pen off
            fill-pen (light-blue)
            line 
            (0x0) 
            (376x0)
            (376x430) 
            (0x208)
        ]
    ]
]

view win
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 