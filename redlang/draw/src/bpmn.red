Red [
    Title: "bpmn.red"
    Needs: 'View
]

history-shapes: copy []

client-area-size: 500x500

rect-width: 100
rect-height: rect-width / 2
space-width-in-between: 40

rect-rounded-width: rect-width - 10
rect-rounded-height: rect-height - 10

init-rectangle: function [ /round-rectangle][
    rect: copy []

    last-shape: last history-shapes
    switch/default to-lit-word last-shape [
        'circle 'connect-right [
            append rect compose/deep [['move (make pair! reduce [
                either round-rectangle [5][0]
                (0 - rect-height / 2)
            ])]]
        ]
    ][
        append rect compose/deep [['move (make pair! reduce [0 (0 - rect-height)])]]
    ]  
    return rect
]

rectangle: function [][

    rect: init-rectangle  

    append rect/1 compose/deep [
        'hline (rect-width)
        'vline (rect-height)
        'hline (0 - rect-width)            
    ]
    append history-shapes 'rectangle
    compose/deep [shape (rect)]
]

rect-rounded: compose/deep [[
    'hline (rect-rounded-width)
    'arc 5x5 5.0 5.0 (rect-rounded-width) sweep ; sweep needed for positive angle
    'vline (rect-rounded-height)
    'arc -5x5 5.0 5.0  (rect-rounded-width) sweep         
    'hline (0 - rect-rounded-width)
    'arc -5x-5 5.0 5.0  (rect-rounded-width) sweep   
    'vline (0 - rect-rounded-height)
    'arc 5x-5 5.0 5.0  (rect-rounded-width) sweep               
]]


rectangle-rounded: function [][

    rect: init-rectangle/round-rectangle

    append rect/1 compose/deep [
        'hline (rect-rounded-width)
        'arc 5x5 5.0 5.0 (rect-rounded-width) sweep ; sweep needed for positive angle
        'vline (rect-rounded-height)
        'arc -5x5 5.0 5.0  (rect-rounded-width) sweep         
        'hline (0 - rect-rounded-width)
        'arc -5x-5 5.0 5.0  (rect-rounded-width) sweep   
        'vline (0 - rect-rounded-height)
        'arc 5x-5 5.0 5.0  (rect-rounded-width) sweep           
    ]
    append history-shapes 'rectangle-rounded
    compose/deep [shape (rect)]
]

rounded-rectangle: :rectangle-rounded

circle-radius: 16

circle:  function['>circle-position [pair! unset!] /local ][
    switch type?/word get/any '>circle-position [
        unset! [
            .circle-position: make pair! reduce [50 (client-area-size/2 / 2)]
        ]
        pair! [
            .circle-position: >circle-position
        ]
    ]

    shape-circle: compose/deep [[
        move (.circle-position)
        arc  (make pair! reduce [.circle-position/1 .circle-position/2 + 1]) (circle-radius) (circle-radius) 0 large
    ]]    
    append history-shapes 'circle
    compose/deep [shape (shape-circle)]
]

startEvent: :circle

move-right: function ['>distance [integer! unset!]][

    rect: init-rectangle

    switch type?/word get/any '>distance [
        unset! [
            last-shape: last history-shapes
            switch/default to-lit-word last-shape [
                'circle [.distance: space-width-in-between]
            ][
                .distance: space-width-in-between + rect-width
            ]

        ]
        integer! [
            .distance: >distance
        ]
    ] 

    shape-move-right: compose/deep [[
        'move (make pair! reduce [.distance 0])
    ]]
    compose/deep [shape (shape-move-right)]
]

init-connector: function [][
    rect: copy []

    last-shape: last history-shapes
    switch/default to-lit-word last-shape [
        'circle [
            append rect compose/deep [['move (make pair! reduce [0 (0 - 0)])]]
        ]
        'rectangle-rounded [
            append rect compose/deep [['move (make pair! reduce [(rect-width - 5) (rect-height / 2)])]]
        ]
    ][
        append rect compose/deep [['move (make pair! reduce [rect-width (0 - rect-height / 2)])]]
    ]  
    return rect
]

connect-right: function ['>distance [integer! unset!]][

    rect: init-connector

    switch type?/word get/any '>distance [
        unset! [
            last-shape: last history-shapes
            switch/default to-lit-word last-shape [
                'circle 'connect-right [.distance: space-width-in-between]
            ][
                .distance: space-width-in-between
            ]

        ]
        integer! [
            .distance: >distance
        ]
    ]

    append rect/1 compose/deep [
        'hline (.distance)
    ]    
    append history-shapes 'connect-right
    compose/deep [shape (rect)]
]

view compose/deep [

    title {BPMN}
    origin 0x0 space 0x0

    base (client-area-size) white draw [
        pen black

        (startEvent)

        (connect-right)
        (rounded-rectangle)
        
        (connect-right)
        (rounded-rectangle)

        (connect-right)
        (rounded-rectangle)      

    ]
]
