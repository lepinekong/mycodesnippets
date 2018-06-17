Red [
    Title: ""
]

linear-interpolate: func [
    src-min  [number!]
    src-max  [number!]
    dest-min [number!]
    dest-max [number!]
    value    [number!]
][
    add dest-min ((value - src-min) / (src-max - src-min) * (dest-max - dest-min))
]
map-from-pct: func [dest-min dest-max value][
    linear-interpolate  0 1  dest-min dest-max  value
]
map-to-pct: func [src-min src-max value][
    linear-interpolate src-min src-max 0% 100% value
]
rng: [1 100]
print map-to-pct rng/1 rng/2 probe map-from-pct rng/1 rng/2  50%
rng: [0 1000]
print map-to-pct rng/1 rng/2 probe map-from-pct rng/1 rng/2  50%

view [
    text "Min:" f-min: field "1" return
    text "Max:" f-max: field "100" return
    sld: slider [print face/data]
    text "Result:" f-res: text react [
        face/text: form round map-from-pct f-min/data f-max/data sld/data
    ]
]