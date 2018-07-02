Red [
    Title: "iphone.red"
    Needs: 'View
    Inspirations: [
        https://github.com/dabit3/heard
    ]
]

client-area-size: 411x768
img-iphone: load http://mycodesnippets.space/images/collections/mobile/iphone6/iphone6.png
img-iphone-header: load http://mycodesnippets.space/images/collections/mobile/iphone6/iphone6-header-0.png

iphone: [
    at 0x0 image (img-iphone)
    at 50x95 image (img-iphone-header)
]

win-layout: [
    title {Red lang VID dialect: positioning demo iphone}
    origin 0x0 space 0x0
]

append win-layout iphone

win: compose/deep win-layout
view layout win
