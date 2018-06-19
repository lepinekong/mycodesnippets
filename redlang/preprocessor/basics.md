
# Preprocessor basics


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/preprocessor/basics.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/preprocessor/basics.red)


### Introduction

The Red preprocessor transforms code during, after the LOADing phase. Transformations are achieved by inlining preprocessor keywords (called directives) inside Red source code.

- [Official documentation](https://doc.red-lang.org/en/preprocessor.html)
                        

### Demo

For demo type in Red Console:
>do read http://mycodesnippets.space/redlang/preprocessor/src/basics.red

then type:
>[1,2,3,abd,"hello"]

You should get this:
![https://i.imgur.com/wpGH6G1.png](https://i.imgur.com/wpGH6G1.png)
                    

### Source code

![https://i.imgur.com/NYKUJlk.png](https://i.imgur.com/NYKUJlk.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/preprocessor/src/basics.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/preprocessor/src/basics.red)
                        


```

system/lexer/pre-load: func [src part][
    parse src [
        any [
            remove comma insert #" " | skip
        ]
    ]
]
do {
    block: [1,2,3,abd,"hello"] 
    ?? block
}           
        
```


