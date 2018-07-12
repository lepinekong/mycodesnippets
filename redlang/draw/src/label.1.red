Red [
    Title: "mini-charts.red"
]

transparent: 255.255.255.255
color-1: 63.181.229
color-2: 190.220.230

dataviz: compose/deep [
    origin 0x0 space 0x0
    at 0x0 base 120x120 white draw [
        pen off
        fill-pen (color-1)
        circle 60x60 60 ; circle center radius
        fill-pen (color-2)
        circle 60x60 46
    ]
    at 14x14 base 92x92 (transparent) 
    "Income $100K" white bold font-size 14 middle wrap  
]

view dataviz