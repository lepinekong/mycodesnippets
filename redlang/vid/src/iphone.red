Red [
    Title: "iphone.red"
    Needs: 'View
]


img-iphone: load http://mycodesnippets.space/images/collections/mobile/iphone6.png


background-image: img-iphone
win-layout: [
    title {Red lang VID dialect: positioning demo iphone}
    origin 0x0 space 0x0
]

bigRect: 411x768

if (value? 'background-image) [
    append win-layout [at 0x0 image (bigRect) (background-image)]
] 

win: compose/deep win-layout
view layout win