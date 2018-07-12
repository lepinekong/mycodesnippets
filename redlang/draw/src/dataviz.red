Red [
    Title: "mini-charts.red"
]

transparent: 255.255.255.255
color-1: 190.220.230
color-2: 63.181.229

dataviz: layout compose/deep [

    title {Data Visualization}

    img: panel [
        origin 0x0 space 0x0

        across
        base 120x120 white draw [
                pen off
                fill-pen (color-1)
                circle 60x60 60 ; circle center radius

        ]

        panel [
            origin 0x0 space 0x0
            base 120x120 white draw [
                    pen off
                    fill-pen (color-1)
                    circle 60x60 60 ; circle center radius
                    fill-pen (color-2)
                    circle 60x60 46
            ]
            at 14x14 base 92x92 (transparent) 
            "Income $100K" white bold font-size 14 middle wrap
        ]
    ]   

    return

    panel [
        button "save" [
            img-out: to-image img
        ]
    ]
]

view dataviz
save/as %dataviz.png img-out 'png
print ["dataviz.png saved in" clean-path %./]
