
# as-pair


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/as-pair.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/as-pair.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/src/as-pair.red


### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/as-pair.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/as-pair.red)
                        


```red

width: 100
height: 250
view compose/deep [
    title "as-pair demo"
    ;instead of
    ;base (make pair! reduce [width height])
    ;it's shorter to write
    base (as-pair width height)
]
        
```


