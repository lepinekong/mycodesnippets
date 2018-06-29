Red [
    Title: "sinusoid.red"
]

Article: [

    Title: {draw sinusoid}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/draw/sinusoid.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/sinusoid.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/draw/sinusoid
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/draw/src/sinusoid.red}
        .image: https://i.imgur.com/Wcmgts3.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/id8t8uF.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/src/sinusoid.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/draw/src/sinusoid.red
        ]        
        .code/red: {
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

        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 