
# vid dialect: positioning


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/vid/positioning.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/vid/positioning.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/vid/src/positioning.red

![https://i.imgur.com/5im4ao2.png](https://i.imgur.com/5im4ao2.png)
                    

### Code Snippet

![https://i.imgur.com/w6fJ38J.png](https://i.imgur.com/w6fJ38J.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/vid/src/positioning.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/vid/src/positioning.red)
                        


```red

Red [
    Title: "positioning.red"
    Url: http://mycodesnippets.space/redlang/vid/positioning
]

;text variables:
quote: {We will never transform our prevailing system of management without transforming the prevailing system of education — they are the same system.}      
signature: {Edwards Deming}
signature-decoration-before: {-- } 
signature-decoration-after: {}

;resources
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

    title {Red lang VID dialect: positioning demo}
    origin 0x0 space 0x0
    
    at 0x0
    panel (bigRect) [
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

]

view layout compose/deep win
        
```


