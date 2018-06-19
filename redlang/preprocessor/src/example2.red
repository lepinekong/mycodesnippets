Red [
    Title: "Redlang Pre-processor example 2"
]

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

print {i: 10 tant que [i > 0][si impair? i [affiche i] i: i - 1]}  
do {i: 10 tant que [i > 0][si impair? i [affiche i] i: i - 1]}  
