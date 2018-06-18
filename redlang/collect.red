Red [
    Title: "collect.red"
]

Article: [

    Title: {Collect Keyword}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/collect.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/collect.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/collect
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/collect.red}
        .image: 
    ]      
    
    Basics: [

        .title: {Basic collect}
        .image: https://i.imgur.com/8ISzG3G.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/collect.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/collect.red
        ]        
        .code/red: {
;Instead of:
block: copy []
repeat i 16 [append block i] ; == [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]


;you can use collect with keep:
collect [repeat i 16 [keep i]] ; == [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]
        }

    ]

    Range-Function: [
        .title: {Range function}
        .text: {range function is available on redlang.red:}
        .quote: {do read http://redlang.red/range}
        .text: {It uses collect/keep:}
        .code/red: {
.range: function[>min >max][
    min: >min
    max: >max
    block: collect [repeat i (>max - min + 1) [keep (i + min - 1)]]    
    return block
]
range: :.range          
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 