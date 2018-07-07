Red [
    Title: "rectangle-corners.red"
]

Article: [

    Title: {rectangle corners}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/draw/rectangle-corners.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/rectangle-corners.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/draw/rectangle-corners
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/draw/src/rectangle-corners.red}
        .image: https://i.imgur.com/iI3Q3U2.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/kTmxNpW.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/draw/src/rectangle-corners.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/draw/src/rectangle-corners.red
        ]        
        .code/red: {
;you can also call 
;do read https://redlang.red/rectangles
;instead of pasting code snippet for the functions

rectangle: function [/rounded /inverted][

    shape-layout: copy [[]] 
    shape-layout/1: copy [] ; must do this otherwise will append to previous content

    either rounded [

        angle-size: 5.0
        rect-rounded-width: 100 - (2 * angle-size)
        rect-rounded-height: 50 - (2 * angle-size) 

        either inverted [
            angles: compose [
                (make pair! reduce [angle-size angle-size]) ; 5x5
                (make pair! reduce [0 - angle-size angle-size]) ;-5x5
                (make pair! reduce [0 - angle-size 0 - angle-size]) ;-5x-5
                (make pair! reduce [angle-size 0 - angle-size]) ;5x-5
            ]            

            append shape-layout/1 compose/deep [
                'move (make pair! reduce [angle-size 0]) ; to adjust pen position for next shape
                'hline (rect-rounded-width)
                'arc (angles/1) (angle-size) (angle-size) (rect-rounded-width) ; no sweep for negative angle
                'vline (rect-rounded-height)
                'arc (angles/2) (angle-size) (angle-size)  (rect-rounded-width)         
                'hline (0 - rect-rounded-width)
                'arc (angles/3) (angle-size) (angle-size) (rect-rounded-width)  
                'vline (0 - rect-rounded-height)
                'arc (angles/4) (angle-size) (angle-size)  (rect-rounded-width) 
                'move (make pair! reduce [0 - angle-size 0]) ; no sweep for negative angle
            ]

        ][
            ; for inverted rounded rectangle
            angles: compose [
                (make pair! reduce [angle-size angle-size]) ; 5x5
                (make pair! reduce [0 - angle-size angle-size]) ;-5x5
                (make pair! reduce [0 - angle-size 0 - angle-size]) ;-5x-5
                (make pair! reduce [angle-size 0 - angle-size]) ;5x-5
            ]            

            append shape-layout/1 compose/deep [
                'move (make pair! reduce [angle-size 0]) ; to adjust pen position for next shape
                'hline (rect-rounded-width)
                'arc (angles/1) (angle-size) (angle-size) (rect-rounded-width) sweep ; sweep needed for positive angle
                'vline (rect-rounded-height)
                'arc (angles/2) (angle-size) (angle-size)  (rect-rounded-width) sweep         
                'hline (0 - rect-rounded-width)
                'arc (angles/3) (angle-size) (angle-size) (rect-rounded-width) sweep   
                'vline (0 - rect-rounded-height)
                'arc (angles/4) (angle-size) (angle-size)  (rect-rounded-width) sweep  
                'move (make pair! reduce [0 - angle-size 0]) ; to adjust pen position for next shape
            ]
        ]
    ][
        append shape-layout/1 compose/deep [
            'hline 100
            'vline 50
            'hline -100
            'vline -50
        ]
    ]

    compose/deep [shape (shape-layout)]

]


margin: function ['.margin-value [integer! unset!]][

    switch type?/word get/any '.margin-value [
        unset! [
            left-margin-value: 100
            right-margin-value: 50
        ]
        integer! [

            left-margin-value: .margin-value
            right-margin-value: .margin-value
        ]
    ]

    shape-layout: copy [[]] 
    shape-layout/1: copy [] ; must do this otherwise will append to previous content

    append shape-layout/1 compose/deep [
        ;'move 100x100  ; left-margin = right-margin
        'move (make pair! reduce [left-margin-value right-margin-value])
    ]    
    compose/deep [shape (shape-layout)]
]


win: compose/deep [

    title {rectangle corners demo}
    base (800x480) white draw [
        pen black
        (margin 10)
        (rectangle)
        (margin)
        (rectangle/rounded)
        (margin)        
        (rectangle/rounded/inverted)
    ]

]

;un-comment to see generated drawing commands
;?? win
;write-clipboard mold win

view layout win

        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 