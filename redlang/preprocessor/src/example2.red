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
