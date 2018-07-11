
# set


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/set.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/set.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/src/set.red


### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/set.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/set.red)
                        


```red

labels: copy []

set-label: function [&label &coordinates [block!] /local .x1 .y1 .x2 .y2][

    transparent: 255.255.255.255

    set [.x1 .y1 .x2 .y2] reduce [
        &coordinates/1
        &coordinates/2
        &coordinates/3
        &coordinates/4
    ]

    .label: form &label

    .base-position: make pair! reduce [.x1 .y1]
    .base-size: make pair! reduce [.x2 - .x1 .y2 - .y1]
    
    append labels compose/deep [
        at (.base-position) base (.base-size) (transparent) (.label)
    ]

]
        
```


