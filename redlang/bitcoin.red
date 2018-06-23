Red [
    Title: "json.red"
]

Article: [

    Title: {Json}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/json.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/json.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/json
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/json.red}
        .image: https://i.imgur.com/DVcAOqW.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/json.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/json.red
        ]        
        .code/red: {
	from-json: :.from-json
	data: from-json read https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=USD
	price: to-float data/price_usd
    ?? data
	?? price
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 

