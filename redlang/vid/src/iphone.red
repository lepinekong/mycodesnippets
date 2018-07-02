Red [
    Title: "iphone.red"
    Needs: 'View
    Inspirations: [
        https://github.com/dabit3/heard
    ]
]

light-gray: 250.250.250
img-iphone: load http://mycodesnippets.space/images/collections/mobile/iphone6/iphone6.png
img-iphone-header: load http://mycodesnippets.space/images/collections/mobile/iphone6/iphone6-header-0-transparent.png

iphone: [
    at 0x0 image (img-iphone)
    at 50x95 image (img-iphone-header)
]

win-layout: [
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
