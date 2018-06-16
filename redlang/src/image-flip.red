Red [
    Title: "image-flip.red"
    Needs: 'View
]

img1: load http://mycodesnippets.space/images/snapchat_128.png
img2: load http://mycodesnippets.space/images/youtube_128.png

view layout compose [
    image "Flip" img1 on-over [
        img: face/image
        either img = img1 [
            face/image: img2
        ][
            face/image: img1
        ]
    ] 
]