Red [
    Title: "nlp-command.red"
]

do https://redlang.red/chrome/take-screenshot.red
system/lexer/pre-load: func [src part][
    {
        Usage: all examples below are equivalent:

        - take screenshot of https://google.com in c:\test\test.png
        - make a screenshot of https://google.com in c:\test\test.png
        - make a screencopy of https://google.com to c:\test\test.png
        - screenshot https://google.com c:\test\test.png
        - shoot https://google.com to c:\test\test.png
    }
    parse src [
        any [
            s: [
                ["take-screenshot:" | "take-screenshot." | "Usage: take-screenshot" | "sysTake-Screenshot" | ":take-screenshot"] 
            ] skip
            |
            s: [
                [
                    [["take" | "make"] [" a " | " "] ["screenshot" | "screencopy"]]     
                    | "shoot"
                    | "takescreenshot"   
                    | "screenshot" 
                    | "screencopy" 
                    | ["webscreenshot" | "web screenshot"] 
                ] (new: rejoin ["take-screenshot"] )
            ] e: (s: change/part s new e) :s 
            |            
            s: [
                [
                "take-screenshot " copy arg1 to space copy arg2 to space to newline 
                | "take-screenshot " copy arg1 to space copy arg2 to end
                "take-screenshot" [" of " | " "] copy arg1 to space [" in " | " to " | " " ] copy arg2 to newline 
                | "take-screenshot" [" of " | " "] copy arg1 to space [" in " | " to " | " "] copy arg2 to end                                
                ] 
                (new: rejoin ["take-screenshot" { } arg1 { } arg2] )
            ] e: (s: change/part s new e) :s 
            | skip
        ]
    ]
]
