Red [
    Title: "key-value.red"
]

Article: [

    Title: {key-value}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/key-value.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/key-value.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/key-value
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do https://mycodesnippets.space/redlang/src/key-value.red}
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/IMCe0el.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/key-value.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/key-value.red
        ]        
        .code/redcode: {
kv: [ a: 1 b: 2 c: 3]

;same code if 
;kv: [ a 1 b 2 c 3]

print {
    Instead of:
    v: select kv 'b (' means literal value instead of b evaluation)
    You can also use:
    v: kv/b ; 2
}

;-------------------------------------
v: kv/b ; same as: select kv 'b
;-------------------------------------
?? v ; -> v: 2

print {
    If your key is stored in a variable k:
    k: 'b
    Instead of select kv k, you can use:
    v: kv/(k)
    ?? v    
}

;-------------------------------------
k: 'b
v: kv/(k) ; same as: select kv k      
;-------------------------------------
?? v ; -> v: 2
        }

    ]
]

do https://readable.red
markdown-gen 