Red [
    Title: "save-screen.red"
    .links: [
        http://mycodesnippets.space/redlang/vid/positioning
        https://gitter.im/red/help?at=5b2ea3526ceffe4eba2d6447
    ]
]

;text variables:
quote: {We will never transform our prevailing system of management without transforming the prevailing system of education — they are the same system.}      
signature: {Edwards Deming}
signature-decoration-before: {-- } 
signature-decoration-after: {}

;resources see https://www.granneman.com/webdev/coding/css/fonts-and-formatting/default-fonts#windows
font-courrier: "Courier New"
font-lucida-calligraphy: "Lucida Calligraphy"
font-georgia: "Georgia"

blue-marine: 47.63.142
dark-grey: 54.54.54
dark-green-pale: 152.215.216

;params
bigRect: 1023x728
glyph-position: 466x100
quote-position: 50x266
signature-position: 0x600

;programs
font-quote: make font! [ name: font-courrier size: 36 color: white]
quote-size: make pair! compose [(bigRect/1 - (2 * quote-position/1)) (signature-position/2)]

font-signature: make font! [ name: font-quote/name size: ((36 / 3) * 2) color: font-quote/color]
signature-size: make pair! compose [(bigRect/1 - (2 * signature-position/1)) 100]

font-glyph: make font! [ name: font-georgia size: 144 color: white]
glyph-size: make pair! compose [(bigRect/1 - (2 * glyph-position/1)) 100]

win: [

    title {How to save image}
    origin 0x0 space 0x0
    
    at 0x0
    img-quote: panel (bigRect) [
        backdrop (blue-marine)

        at (quote-position)
        text (quote-size) font (font-quote) wrap center
        (quote)

        at (signature-position)
        text (signature-size) font (font-signature) wrap center
        (rejoin [signature-decoration-before signature signature-decoration-after])

        at (glyph-position)
        text (glyph-size) font (font-glyph) center {“}
    ]
    at 0x729
    panel [
        button "save" [
            img-out: to-image img-quote
        ]
    ]

]

view layout compose/deep win

if value? 'img-out [
    save/as %quote.png img-out 'png
    print ["quote.png saved in" clean-path %./]
]


