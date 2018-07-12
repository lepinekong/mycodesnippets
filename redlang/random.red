Red [
    Title: "random.red"
]

Article: [

    Title: {random}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/random.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/random.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/random
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/random.red}
        .image: https://i.imgur.com/hoTDNFc.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/k6hkmc8.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/random.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/random.red
        ]        
        .code/red: {
random/seed now/time

dice1: random 6 
dice2: random 6
?? dice1 ?? dice2 ; ex. dice1: 2 dice2: 1

;or
do https://redlang.red/range
dices: range/dices 1 6 2
?? dices ; [2 1]

fibonacci-dice1: first random [1 2 4 8 16 32]
fibonacci-dice2: first random [1 2 4 8 16 32]
;or
fibonacci-dices: reduce [first random [1 2 4 8 16 32] first random [1 2 4 8 16 32]]

?? fibonacci-dice1; fibonacci-dice1: 8
?? fibonacci-dice2; fibonacci-dice2: 2
?? fibonacci-dices; fibonacci-dices: [4 16]

        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 