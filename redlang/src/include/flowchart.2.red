Red [
    Title: "flowchart.red"
]

print "in flowchart.red: do %lib/shapes.red"
print clean-path %libs/shapes.red
do %libs/shapes.red

f: function[][
    .parse-youtube-url https://www.youtube.com/watch?v=B5kkOxHGz8M
]


.parse-youtube-url: function [
    >youtube-url [url!] 
    /id
    /local _counter_][

    if __OFFLINE__ or error? try [
        do load-thru/update https://redlang.red/url.red
    ][
        print "OFFLINE mode line 150"
        print clean-path %libs/url.red
        do %libs/url.red
    ]        

    _counter_: copy []
    if empty? _counter_ [append _counter_ 0]

    .url: >youtube-url

    if error? try [
        .html: read >youtube-url
        parse .html [
            thru {<meta name="twitter:title" content="} copy .title to {">}
            thru {<meta name="twitter:description" content="} copy .description to {">}
        ]
        .id: parse-url .url 'v        
    ][
        ans: ask {Do you want simulated data ("Y" for YES)?}
        if ans = "Y" [
            .id: "Gg84CO4L2Yw"
            .title: "How the Universe Works"
            .description: {Blow your Mind of the Universe Part 11 - Space Discovery Documentary}
        ]
    ]

    return compose [
        id: (.id)
        title: (.title)
        description: (.description)
    ]    

]

.parse-youtube: :.parse-youtube-url
parse-youtube: :.parse-youtube-url  

f
