Red [
    Title: "transparency.red"
]

blue-marine: 47.63.142

client-area-size: 1023x728
client-area-color: 

win-layout: [

    title {Red lang VID dialect: positioning demo}
    origin 0x0 space 0x0
    at 0x0 base (client-area-size) (blue-marine) 
    image (load http://mycodesnippets.space/images/collections/stickers/free.png)
]

win: compose/deep win-layout
view layout win

