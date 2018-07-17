
# key-value


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/key-value.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/key-value.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do https://mycodesnippets.space/redlang/src/key-value.red


### Code Snippet

![https://i.imgur.com/IMCe0el.png](https://i.imgur.com/IMCe0el.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/key-value.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/key-value.red)
                        


```redcode

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
        
```


