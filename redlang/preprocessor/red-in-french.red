Red [
    Title: "red-in-french.red"
]

Article: [

    Title: {Red in French!}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/preprocessor/red-in-french.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/preprocessor/red-in-french.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/preprocessor/red-in-french
    ]  
    Demo: [
        .title: {Code in french}
        .text: {For demo type in Red Console:}
        .quote: {do read http://mycodesnippets.space/redlang/preprocessor/src/red-in-french.red}
        .text: {then type:}
        .quote: {i: 10 while [i > 0][si even? i [print i] i: i - 1]}
        .text: {You should get:}
        .image: https://i.imgur.com/GW41yg9.png
        .text: {Then type the instruction in french}
        .quote: {i: 10 tant que [i > 0][si impair? i [affiche i] i: i - 1]}
        .text: {check that it also works:}
        .image: https://i.imgur.com/JtgfwaZ.png  
    ]
    Source: [  
        .title: {Source code}  
        .image: https://i.imgur.com/cNmpbyu.png  
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/preprocessor/src/red-in-french.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/preprocessor/src/red-in-french.red
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