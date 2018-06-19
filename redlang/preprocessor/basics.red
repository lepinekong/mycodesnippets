Red [
    Title: "basics.red"
]

Article: [

    Title: {Preprocessor basics}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/preprocessor/basics.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/preprocessor/basics.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/preprocessor/basics
    ]  

    Introduction: [
        .title: {Introduction}
        .text: {The Red preprocessor transforms code during, after the LOADing phase. Transformations are achieved by inlining preprocessor keywords (called directives) inside Red source code.
        }
        .links: [
            {Official documentation} https://doc.red-lang.org/en/preprocessor.html
        ]
    ] 

    Demo: [
        .title: {Basic Demo}
        .text: {Replace "," by " "}
        .text: {For demo type in Red Console}
        .quote: {do read http://mycodesnippets.space/redlang/preprocessor/src/basics.red}
        .text: {then type:}
        .quote: {[1,2,3,abd,"hello"]}
        .text: {You should get this:}
        .image: https://i.imgur.com/wpGH6G1.png 
    ]

    Source: [
        .title: {Source code}    

        .image: https://i.imgur.com/NYKUJlk.png  
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/preprocessor/src/example1.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/preprocessor/src/example1.red
        ]                
        .code: {
system/lexer/pre-load: func [src part][
    parse src [
        any [
            remove comma insert #" " | skip
        ]
    ]
]
do {
    block: [1,2,3,abd,"hello"] 
    ?? block
}           
        }
    ]

]

do read http://readablehumanformat.com/lib.red
markdown-gen 

system/lexer/pre-load: func [src part][
    parse src [
        any [
            remove comma insert #" " | skip
        ]
    ]
]
do {block: [1,2,3,abd,"hello"] ?? block} 