Red [
    Title: ""
    References: [
        http://red.reb4.me/news/2016/06/061-reactive-programming
    ]
]

to-int: function [value [percent!]][to integer! 255 * value]

view [
    below
    r: slider
    g: slider
    b: slider
    base react [
        face/color: as-color to-int r/data to-int g/data to-int b/data
    ]
]