
# Index of redlang preprocessor code snippets


### ReAdABLE Source

[http://mycodesnippets.space/redlang/preprocessor/index.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/preprocessor/index.red)


### Introduction

The Red preprocessor transforms code during, after the LOADing phase. Transformations are achieved by inlining preprocessor keywords (called directives) inside Red source code.

- [Official documentation](https://doc.red-lang.org/en/preprocessor.html)
                        

### Example 1:

Replace "," by " "
For demo type in Red Console
>do read http://mycodesnippets.space/redlang/preprocessor/src/example1.red

then type:
>[1,2,3,abd,"hello"]

You should get this:
![https://i.imgur.com/wpGH6G1.png](https://i.imgur.com/wpGH6G1.png)
                    
Source code: 
![https://i.imgur.com/NYKUJlk.png](https://i.imgur.com/NYKUJlk.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/preprocessor/src/example1.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/preprocessor/src/example1.red)
                        


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



### Example 2: 






```

system/lexer/pre-load: function [src part][
    parse src [
        any [
            s: [
"affiche"       (new: "print")
| "si"          (new: "if")
| "tant que"    (new: "while")
| "pair?"       (new: "even?")
| "impair?"     (new: "odd?")
            ] e: (s: change/part s new e) :s
            | skip
        ]
    ]
]

do {i: 10 tant que [i > 0][si impair? i [affiche i] i: i - 1]}            
        
```


