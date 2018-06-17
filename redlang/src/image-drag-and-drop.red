Red [
    Title: ""
    References: [
        http://red.reb4.me/news/2016/03/060-red-gui-system
    ]
]

view [
    size 300x300
    img: image loose http://static.red-lang.org/red-logo.png
    return
    shade: slider 0%
    return
    text bold font-size 14 center "000x000" 
        react [face/text: form img/offset]
        react [face/font/color: white * shade/data]
]