
# Red in French!


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/preprocessor/red-in-french.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/preprocessor/red-in-french.red)


### Code in french

For demo type in Red Console
>do read http://mycodesnippets.space/redlang/preprocessor/src/example2.red

then type:
>i: 10 while [i > 0][si even? i [print i] i: i - 1]

You should get:
![https://i.imgur.com/GW41yg9.png](https://i.imgur.com/GW41yg9.png)
                    
Then type the instruction in french
>i: 10 tant que [i > 0][si impair? i [affiche i] i: i - 1]

check that it also works:
![https://i.imgur.com/JtgfwaZ.png](https://i.imgur.com/JtgfwaZ.png)
                    

### Source code

![https://i.imgur.com/NYKUJlk.png](https://i.imgur.com/NYKUJlk.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/preprocessor/src/example2.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/preprocessor/src/example2.red)
                        


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


