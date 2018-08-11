Red [
    Title: ""
]

loop 5 [
    counter: []
    either empty? counter [append counter 1][
        counter/1: counter/1 + 1
    ]
    print ["hello" counter/1]
    ask "pause"
]
