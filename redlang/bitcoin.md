
# Json


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/json.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/json.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/src/json.red

![https://i.imgur.com/DVcAOqW.png](https://i.imgur.com/DVcAOqW.png)
                    

### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/json.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/json.red)
                        


```red

	from-json: :.from-json
	data: from-json read https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=USD
	price: to-float data/price_usd
    ?? data
	?? price
        
```


