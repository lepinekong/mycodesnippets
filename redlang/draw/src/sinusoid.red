Red [
    Title: "sinusoid.red"
]


title: {draw sinusoid}

win: compose/deep [title (title)]

plot: [
    pen black
    line 0x60 360x60 ; x axis

    pen blue
    line
]

repeat x 360 [ ; 360 points
    append plot as-pair x 60 - (50 * sine x)
]

append win compose/deep [
    box 360x120 draw [(plot)]
]

; or using reduce
; append win compose/deep [
;     box 360x120 (reduce ['draw plot])
; ]

view win 
