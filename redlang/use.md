
# use


### ReAdABLE Source

[http://mycodesnippets.space/redlang/use.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/use.red)


### use

>.use allows to create light section for structuring your code
with local variables without creating a more heavier function, object or file which breaks linearity and makes harder to read and understand your code.


```

do bind body make object! collect [
    forall locals [keep to set-word! locals/1]
    keep none
]
        
```


Example:


```

count: 10
.use [count][
    count: 0
    count: count + 1
    print count ; 1
]
print count ; 10            
        
```


