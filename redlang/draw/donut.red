Red [
    Title: "donut.red"
]

Article: [

    Title: {donut}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/draw/donut.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/donut.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/draw/donut
    ]  

    Credits: [
        .title: {Credits}
        .text: {
        - Toomas Vooglaid: Drawing algorithm
        - Lépine Kong: Data conversion           
        }
    ]

    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do http://mycodesnippets.space/redlang/draw/src/donut.red}
        .image: http://mycodesnippets.space/redlang/draw/images/donut.gif
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/src/donut.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/draw/src/donut.red
        ]        
        .code/redcode: {
do https://redlang.red/percentages-to-sectors

percentages-colors: [
    30.6 61.160.255
    19.4 99.212.212
    11.1 80.202.115
    11.1 250.212.57
    13.9 242.97.123
    13.9 150.90.228
]

sectors: percentages-colors-to-sectors/with-labels percentages-colors
?? sectors
; sectors: [
;     [angles: -90x110 color: 61.160.255]
;     [angles: 20x70 color: 99.212.212]
;     [angles: 90x40 color: 80.202.115]
;     [angles: 130x40 color: 250.212.57]
;     [angles: 170x50 color: 242.97.123]
;     [angles: 220x50 color: 150.90.228]
; ]

dimensions: 400x400 d: dimensions
center: as-pair (d/1 / 2) (d/2 / 2) radius: as-pair (d/1 / 3) (d/2 / 3) inner-radius: 60
background-color: snow line-color: white line-thickness: 3

win: copy compose [title "Donut Chart" backdrop (background-color) at 0x0 box (dimensions)]

r: radius zoom: 1.10 drawing: copy []
foreach sector sectors [
    append drawing compose/deep/only [
        at 0x0 box (dimensions) draw [
            fill-pen (sector/color) pen (line-color) line-width (line-thickness)
            arc (center) (radius) (sector/angles/1) (sector/angles/2) closed
        ] on-over [face/draw/9: either event/away? [(radius)] [(as-pair r/1 * zoom r/2 * zoom)]]        
    ]    
]

append drawing compose/deep [box (dimensions) draw [fill-pen white pen white circle (center) (inner-radius)]]
append win drawing

view/tight win
        }

    ]
]

do https://readable.red
markdown-gen 