Red [
    Title: "image-flip.red"
]

Article: [

    Title: {Flip image in Red}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/red/image-flip.red](https://github.com/lepinekong/mycodesnippets/blob/master/red/image-flip.red)
        }
        .Published-Url: http://mycodesnippets.space/red/image-flip
    ]    
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/35mJBVj.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/image-flip.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/image-flip.red
        ]
        .code/red: {
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
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 