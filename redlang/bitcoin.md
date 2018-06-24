
# Bitcoin price


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/bitcoin.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/bitcoin.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/src/bitcoin.red

![https://i.imgur.com/DVcAOqW.png](https://i.imgur.com/DVcAOqW.png)
                    

### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/bitcoin.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/bitcoin.red)
                        


```red

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

        
```


