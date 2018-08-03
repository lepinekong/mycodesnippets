Red [Title: "test.red"]
; do %../youtube.4.red


get-youtube: function [data-file][
    if error? try [
        do https://redlang.red/youtube.red 
    ][
        print "OFFLINE mode"
        do %../youtube.4.red
    ]
]

get-youtube %youtube.urls.red

