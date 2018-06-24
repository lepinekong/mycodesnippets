Red [
    Title: ""
]

view layout [
    title "timer"
    timer: base 0x0 on-time [move t/text tail t/text]
    t: text "Forever"

    do [
        timer/rate: 10
    ]
]
