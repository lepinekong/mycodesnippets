Red [
    Title: "remove-each.red"
]

Article: [

    Title: {remove-each function}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/remove-each.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/remove-each.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/remove-each
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/remove-each.red}
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/ZBHdRvQ.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/remove-each.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/remove-each.red
        ]        
        .code/redcode: {
blk: ["LSK/BTC" "" "" "" "Buy" "" "" "" "Exchange" "" "" "" "0.00101642" "" "" "" "37.00000000" "" "" "" "0.05550000" "LSK" "(0.15%)" "" "" "" "0.03760754" "BTC" "" "" "" "2017-06-08" "22:12:20"]

remove-each val blk [val = ""]
        }

    ]
]

do https://readable.red
markdown-gen 


blk: ["LSK/BTC" "" "" "" "Buy" "" "" "" "Exchange" "" "" "" "0.00101642" "" "" "" "37.00000000" "" "" "" "0.05550000" "LSK" "(0.15%)" "" "" "" "0.03760754" "BTC" "" "" "" "2017-06-08" "22:12:20"]

remove-each val blk [val = ""]