
# dynamic-call


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/codegen/dynamic-call.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/codegen/dynamic-call.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/codegen/src/dynamic-call.red

![https://i.imgur.com/phDVUud.png](https://i.imgur.com/phDVUud.png)
                    

### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/codegen/src/dynamic-call.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/codegen/src/dynamic-call.red)
                        


```red

show-message: function [/refine msg /popup][

    if not refine [
        msg: "Hello"
        ?? msg
    ]

    either popup [
        view compose [
            text (msg)
        ]
    ][
        print msg
    ]
]

popup: function [msg][
    command: reduce [load "show-message/popup/refine"]
    append command to-word 'msg
    probe command ; [show-message/popup/refine msg]

    ;do [show-message/popup/refine msg] 
    do command ; same as above
]

popup "test"
        
```


