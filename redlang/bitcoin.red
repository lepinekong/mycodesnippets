Red [
    Title: "bitcoin.red"
    References: [
        https://itfordummies.net/2017/11/14/get-bitcoin-price-powershell/
    ]
]

Article: [

    Title: {Bitcoin price}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/bitcoin.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/bitcoin.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/bitcoin
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/bitcoin.red}
        .image: https://i.imgur.com/aRr9Xgq.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/BTuW5jh.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/bitcoin.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/bitcoin.red
        ]        
        .code/red: {
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
        fld-price/rate: 30
        old-price: 0
    ]
]
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 

