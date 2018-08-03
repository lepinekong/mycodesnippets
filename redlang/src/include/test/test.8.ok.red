Red [Title: "test.red"]
; do %../youtube.4.red

__OFFLINE__: true

get-youtube: function [data-file][
    if __OFFLINE__ or error? try [
        do https://redlang.red/youtube.red 
    ][
        print "OFFLINE mode"
        do %../youtube.4.red
    ]
]

get-youtube %youtube.urls.red

