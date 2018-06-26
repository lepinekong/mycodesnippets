Red [
    Title: "positioning.red"
    Version: [0.0.0.3 {image background or no image background}]
    Build: [0.0.0.3.14 {Do: image background or no image background - case no background
        FIXED signature height
    }]
    Url: http://mycodesnippets.space/redlang/vid/positioning
]


CUSTOM-LAYOUT-ON: true ; switch to true for custom layout with background image and splitted quote

;text variables:
glyph: {“}

quote: {We will never transform our prevailing system of management without transforming the prevailing system of education — they are the same system.}      

quote-part1: {We will never transform our prevailing system of management without transforming the }  
quote-part2: {prevailing system of education — they are the same system}    


signature: {Edwards Deming}
signature-decoration-before: {-- } 
signature-decoration-after: {}

;background image if any
background-image: load http://miniapps.red/images/collections/people/deming/background.3.png

;resources see https://www.granneman.com/webdev/coding/css/fonts-and-formatting/default-fonts#windows
font-courrier: "Courier New"
font-lucida-calligraphy: "Lucida Calligraphy"
font-georgia: "Georgia"

blue-marine: 47.63.142
dark-grey: 54.54.54
dark-green-pale: 152.215.216

;params
bigRect: 1023x728
glyph-position: 400x50
quote-position: 50x200
signature-position: 0x600

;programs
font-quote: make font! [ name: font-courrier size: 36 color: white]
quote-size: make pair! compose [(bigRect/1 - (2 * quote-position/1)) (signature-position/2 - quote-position/2)]

font-signature: make font! [ name: font-quote/name size: ((36 / 3) * 2) color: font-quote/color]
signature-size: make pair! compose [(bigRect/1 - (2 * signature-position/1)) 100]

font-glyph: make font! [ name: font-georgia size: 144 color: white]
glyph-size: make pair! compose [(bigRect/1 - (2 * glyph-position/1)) 100]


;win-layout: compose/deep [
win-layout: [

    title {Red lang VID dialect: positioning demo}
    origin 0x0 space 0x0
]


either not ((value? 'background-image) and CUSTOM-LAYOUT-ON) [

    append win-layout [

        at 0x0 base (bigRect) (blue-marine)     

        at (quote-position) base (quote-size) (quote) 255.255.255.255 
        font (font-quote) wrap center   

        at (signature-position) base (signature-size) 
        (rejoin [signature-decoration-before signature signature-decoration-after]) 
        wrap 255.255.255.255 center font (font-signature)
        at (glyph-position) base (glyph-size) (glyph) 
        wrap 255.255.255.255 center font (font-glyph)    
    ]       

][

    bigRect: make pair! compose [ ( to-integer (1688 / 2)) ( to-integer (1096 / 2))]

    quote-position: 15x35
    quote-size: make pair! compose [(bigRect/1 - (2 * quote-position/1) - 10) (bigRect/2 - quote-position/2)]
    quote2-position: 240x250
    quote2-size: make pair! compose [ (bigRect/1 - quote2-position/1 - 25) (bigRect/2 - quote2-position/2)]
    font-quote: make font! [ name: font-courrier size: 36 color: white]

    signature-position: make pair! compose [ 0 (bigRect/2 - 70)]
    signature-size: make pair! compose [(bigRect/1 - signature-position/1 - 25 - 160) 50]
    font-signature: make font! [ name: font-quote/name size: ((36 / 3) * 2) color: font-quote/color]

    glyph-position: 12x5
    glyph-size: make pair! compose [(bigRect/1 - (2 * glyph-position/1)) 100]
    font-glyph: make font! [ name: font-georgia size: 110 color: white]

    transparent-color: 255.255.255.255

    win-layout: [
        title {Red lang VID dialect: positioning demo}
        origin 0x0 space 0x0
    ]

    if (value? 'background-image) [
        append win-layout [at 0x0 image (bigRect) (background-image)]
    ] 

    text-quotes: [
        at (quote-position) base (quote-size) (quote-part1)  (transparent-color) font (font-quote) wrap right
        at (quote2-position) base (quote2-size) (quote-part2) (transparent-color)  font (font-quote)  wrap right
        at (signature-position) base (signature-size) (rejoin [signature-decoration-before signature signature-decoration-after]) 
        (transparent-color) font (font-signature)  wrap right
        at (glyph-position) base (glyph-size) (glyph) 
        (transparent-color) font (font-glyph) wrap left
    ]
    append win-layout text-quotes    

]

win: compose/deep win-layout
view layout win

