Red [
    Title: "shape-rotation.red"

]

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
        shape [
            ;move (make pair! reduce [(375 + width) (225 + width)])
            ;'arc -50x0 25 25 30
            ; doesn't work see why https://gitter.im/red/help?at=5b44b42363042f2df365e019
            arc (as-pair 375 + width 225 + width) 50x50 180 30 
        ]

        pen black

    ]
]

