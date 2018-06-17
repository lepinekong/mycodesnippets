Red [
    Title: "image-writing.red"
    References: [
        http://red.reb4.me/
    ]
]

logo: load http://static.red-lang.org/red-logo.png

big: make font! [name: "Comic" size: 20 color: black]
draw logo [font big text 10x30 "Red"]
view [
    image logo
]