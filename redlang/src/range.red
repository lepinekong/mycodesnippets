Red [
    Title: "range.red"
]

; min: 65
; max: 90
; block: collect [repeat i (max - min + 1) [keep (i + min - 1)]]
; ?? block

.range: function[>min >max][
    min: >min
    max: >max
    block: collect [repeat i (>max - min + 1) [keep (i + min - 1)]]    
    return block
]
range: :.range

probe .range 65 90