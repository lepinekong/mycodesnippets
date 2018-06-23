Red [
    Title: "bitcoin.red"
    Links: [
        http://mycodesnippets.space/redlang/bitcoin
        http://mycodesnippets.space/redlang/src/bitcoin.red
    ]
]

from-json: :.from-json
data: from-json read https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=USD
price: to-float data/price_usd
?? data
?? price