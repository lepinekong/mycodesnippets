img1: load %button.gif
img2: load %button2.gif

view layout [
    backcolor white
    image "REB" img1 feel [
        redraw: func [face act pos] [
            face/image: either face/state [img2][img1]
        ] 
    ][
        browse http://www.rebol.com
    ]
]