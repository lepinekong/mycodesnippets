Red [
    Title: "redlang preprocessor"
]

Article: [

    Title: {Index of redlang preprocessor code snippets}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/redlang/preprocessor/index.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/preprocessor/index.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/preprocessor/index
    ]   

    Introduction: [
        .title: {Introduction}
        .text: {The Red preprocessor transforms code during, after the LOADing phase. Transformations are achieved by inlining preprocessor keywords (called directives) inside Red source code.
        }
        .links: [
            {Official documentation} https://doc.red-lang.org/en/preprocessor.html
        ]
    ] 

    Example-1: [
        .title: {Example 1:}
        .text: {Replace "," by " "}
        .text: {For demo type in Red Console}
        .quote: {do read http://mycodesnippets.space/redlang/preprocessor/src/example1.red}
        .text: {then type:}
        .quote: {[1,2,3,abd,"hello"]}
        .text: {You should get this:}
        .image: https://i.imgur.com/wpGH6G1.png     
        .text: {Source code: }  
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

    Example-2: [
        .title: {Example 2: }
        .text: {Code in french}
        .text: {For demo type in Red Console}
        .quote: {do read http://mycodesnippets.space/redlang/preprocessor/src/example2.red}
        .text: {then type:}
        .quote: {[1,2,3,abd,"hello"]}
        .text: {You should get this:}
        .image: https://i.imgur.com/wpGH6G1.png     
        .text: {Source code: }  
        .image: https://i.imgur.com/NYKUJlk.png  
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/preprocessor/src/example1.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/preprocessor/src/example1.red
        ]          
        .code: {
system/lexer/pre-load: function [src part][
    parse src [
        any [
            s: [
                "affiche"       (new: "print")
                | "si"          (new: "if")
                | "tant que"    (new: "while")
                | "pair?"       (new: "even?")
                | "impair?"     (new: "odd?")
            ] e: (s: change/part s new e) :s
            | skip
        ]
    ]
]

do {i: 10 tant que [i > 0][si impair? i [affiche i] i: i - 1]}            
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


system/lexer/pre-load: function [src part][
    parse src [
        any [
            s: [
                "affiche"       (new: "print")
                | "si"          (new: "if")
                | "tant que"    (new: "while")
                | "pair?"       (new: "even?")
                | "impair?"     (new: "odd?")
            ] e: (s: change/part s new e) :s
            | skip
        ]
    ]
]

do {i: 10 tant que [i > 0][si impair? i [affiche i] i: i - 1]}
