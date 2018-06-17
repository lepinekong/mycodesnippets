Red [
    Title: ""
    References: [
        http://red.reb4.me/news/2016/03/060-red-gui-system
    ]
]

view [
    sld: slider return
    base 200x200 
        draw  [circle 100x100 5]
        react [face/draw/3: to integer! 100 * sld/data]
]