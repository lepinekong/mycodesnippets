Red [
    Title: "bitcoin_9214.red"
    Reference: https://gitter.im/red/help?at=5b2f757fce3b0f268d3e9b53
]

CMC: https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=USD
price?: does [
    load take parse read CMC [
        collect [thru {"price_usd": "} keep to {"}]
    ]
]

view [
    field center rate 1 on-time [face/data: price?]
    text 10x20 font-size 12 rate 5 on-time [append buffer face/text: form take buffer] 

    do [buffer: "|/—\"]
]