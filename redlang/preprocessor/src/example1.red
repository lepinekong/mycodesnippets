Red [
    Title: "example1.red"
]

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
