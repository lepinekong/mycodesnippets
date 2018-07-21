Red [
    Title: "nlp-command.red"
]

do https://redlang.red/chrome/take-screenshot.red

if not value? 'sysTake-Screenshot [
    sysTake-Screenshot: :take-screenshot
]

system/lexer/pre-load: func [src part][
    parse src [
        any [
            s: [
                ["take-screenshot:" | "take-screenshot." | "Usage: take-screenshot" | "sysTake-Screenshot" | ":take-screenshot"] 
            ] skip
            |            
            s: [
                [
                "take-screenshot " copy arg1 to space copy arg2 to space to newline 
                | "take-screenshot " copy arg1 to space copy arg2 to end
                "take screenshot " copy arg1 to space copy arg2 to space to newline 
                | "take screenshot " copy arg1 to space copy arg2 to end 
                "take screenshot" [" of " | " "] copy arg1 to space [" in " | " to " | " " ] copy arg2 to newline 
                | "take screenshot" [" of " | " "] copy arg1 to space [" in " | " to " | " "] copy arg2 to end                                
                ] 
                (new: rejoin ["take-screenshot" { } arg1 { } arg2] )
            ] e: (s: change/part s new e) :s 
            | skip
        ]
    ]
]

