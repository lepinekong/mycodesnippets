Red [
    Title: "iphone.red"
    Needs: 'View
    Version: 0.0.0.1
    Builds: [
        0.0.0.1.1 {}
    ]
    Inspirations: [
        https://github.com/dabit3/heard
    ]
]

Full-Size: 828x1709
zoom-factor: 2
Zoom-Half: make pair! reduce [ full-size/1 / zoom-factor full-size/2 / zoom-factor]
left-border-width: 18
right-border-width: (full-size/1 - 787) / zoom-factor
Top-border-heigth: 110
Bottom-border-heigth: (full-size/2 - 1515) / zoom-factor

client-area-position: make pair! reduce [left-border-width Top-border-heigth]
client-area-size: make pair! reduce [ 
    Zoom-Half/1 - left-border-width - right-border-width 
    Zoom-Half/2 - top-border-heigth - bottom-border-heigth 
]

light-gray: 250.250.250
img-iphone: load http://mycodesnippets.space/images/collections/mobile/iphone6/iphone6-black-background.png
img-iphone-background: load http://mycodesnippets.space/images/collections/mobile/iphone6/iphone6-background-blue-white-split.png

iphone: [
    at 0x0 image (Zoom-Half) (img-iphone)
    at (Client-area-position) base white (client-area-size) draw [
        fill-pen blue shape [
            'hline (client-area-size/1)
            'vline (client-area-size/2 / 3 * 2)
        ]

    ]

]


win-layout: [
    size (Zoom-Half)
    title {Red lang VID dialect: positioning demo iphone}
    origin 0x0 space 0x0
]

footer: [
    at 50x601 base 308x42 (light-gray)
]

append win-layout iphone
append win-layout footer

win: compose/deep win-layout

view layout win
