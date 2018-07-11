Red [
    Title: "as-pair.red"
]

width: 100
height: 250
view compose/deep [
    title "as-pair demo"
    ;instead of
    ;base (make pair! reduce [width height])
    ;it's shorter to write
    base (as-pair width height) ; as-pair accepts 2 parameters, it does not accept a block
]