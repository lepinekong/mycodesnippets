Red [
    Title: "vid-extra.red"
]

i: 1 
view layout [
    style cell: image 10x10 extra 0 on-create [i: 1 + face/extra: i] 
    on-over [print face/extra] 
    cell cell cell cell
]