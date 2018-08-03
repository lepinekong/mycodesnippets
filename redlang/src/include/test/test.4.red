Red [
    Title: "test.1.red"
]

__OFFLINE__: true

get-youtube: function [data-file][
    if __OFFLINE__ or error? try [
        do https://redlang.red/youtube.red 
    ][
        print "OFFLINE mode"
        do %../youtube.4.red
    ]

    return youtube/save/force-update load data-file %youtube.data.red
]

youtube-data: get-youtube %youtube.urls.red
; save %youtube.data.red youtube-data
