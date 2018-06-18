
# Collect Keyword


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/collect.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/collect.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/src/collect.red


### Basic collect

![https://i.imgur.com/8ISzG3G.png](https://i.imgur.com/8ISzG3G.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/collect.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/collect.red)
                        


```red

;Instead of:
block: copy []
repeat i 16 [append block i] ; == [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]


;you can use collect with keep:
collect [repeat i 16 [keep i]] ; == [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]
        
```



### Range function

range function is available on redlang.red to be used like this:
![https://i.imgur.com/h0OpZIg.png](https://i.imgur.com/h0OpZIg.png)
                    
>do read http://redlang.red/range
ascii-numbers: range 65 90   
?? asciis ; -> asciis: [65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90] 


![https://i.imgur.com/GZhl7bw.png](https://i.imgur.com/GZhl7bw.png)
                    
It uses collect/keep:
![https://i.imgur.com/iXpLj3L.png](https://i.imgur.com/iXpLj3L.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/range.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/range.red)
                        


```red

.range: function[>min >max][
    min: >min
    max: >max
    block: collect [repeat i (>max - min + 1) [keep (i + min - 1)]]    
    return block
]
range: :.range          
        
```


