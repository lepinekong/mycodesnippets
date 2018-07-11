Red [
    Title: "set.red"
]


labels: copy []

set-label: function [&label &coordinates [block!] /local .x1 .y1 .x2 .y2][

    transparent: 255.255.255.255

    set [.x1 .y1 .x2 .y2] reduce [
        &coordinates/1
        &coordinates/2
        &coordinates/3
        &coordinates/4
    ]

    .label: form &label

    .base-position: make pair! reduce [.x1 .y1]
    .base-size: make pair! reduce [.x2 - .x1 .y2 - .y1]
    
    append labels compose/deep [
        at (.base-position) base (.base-size) (transparent) (.label)
    ]

]