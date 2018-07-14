Red [
    Title: "shape-rotation.red"
]

Article: [

    Title: {shape rotation}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/draw/shape-rotation.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/shape-rotation.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/draw/shape-rotation
    ]  

    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/draw/src/shape-rotation.red}
        .image: https://i.imgur.com/B3RwSiG.png
    ]      


    discussion: [
        .title: {Discussion}
        .links: [
            https://gitter.im/red/help?at=5b44b42363042f2df365e019
        ]
    ]    

    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/nybGdyL.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/src/shape-rotation.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/draw/src/shape-rotation.red
        ]        
        .code/redcode: {
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


        }

    ]
]

do https://readable.red
markdown-gen 