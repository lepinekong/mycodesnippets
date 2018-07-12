Red [
    Title: "random.red"
]

Article: [

    Title: {random}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/random.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/random.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/random
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/random.red}
        .image: https://i.imgur.com/TBIs61X.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/MzUwIHZ.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/random.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/random.red
        ]        
        .code/red: {
Red [
    Title: "random.red"
]

random/seed now/time
roll-2-dices: copy/part random [1 2 3 4 5 6] 2

;or
;do https://redlang.red/range
;dices: copy/part range/random 1 6 2

?? roll-2-dices ; ex.: [1 5]

        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 