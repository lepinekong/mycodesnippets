Red [
    Title: "demo.red"
]

barchart: does [
    data: copy []
    repeat i 12 [
        append data random 100
    ]
    
    months: [Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec]
    win: copy [title "Quick Barchart in Red-lang"]
    repeat i length? data [
        append win compose [
            text bold 30 (form months/:i)
            b: button (as-pair (data/:i * 12) 40) (mold data/:i)
            return
        ]
    ]
    view win    
]
barchart
