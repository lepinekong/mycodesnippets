Red [
    Title: "bitcoin.red"
    Links: [
        http://mycodesnippets.space/redlang/bitcoin
        http://mycodesnippets.space/redlang/src/bitcoin.red
    ]
]

do read http://redlang.red/json

get-price: function[][
    data: from-json read https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=USD
    return to-float data/price_usd
]

cryptocurrency: make reactor! compose [price: (get-price)]

view layout [
    title "Bitcoin Price"
    fld-price: field right react [face/data: cryptocurrency/price] 
    on-time [
        cryptocurrency/price: price: get-price
        
        if price <> old-price [
            print [now/time price]
            old-price: price
        ]
    ]
    
    ; init
    do [
        fld-price/rate: 2; 2 times / second refresh
        old-price: 0
    ]
]


