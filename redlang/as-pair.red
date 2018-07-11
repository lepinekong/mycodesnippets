Red [
    Title: "as-pair.red"
]

Article: [

    Title: {as-pair}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/as-pair.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/as-pair.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/as-pair
    ]  

    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/as-pair.red}
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/as-pair.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/as-pair.red
        ]        
        .code/red: {
width: 100
height: 250
view compose/deep [
    title "as-pair demo"
    ;instead of
    ;base (make pair! reduce [width height])
    ;it's shorter to write
    base (as-pair width height) ; as-pair accepts 2 parameters, it does not accept a block
]
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 