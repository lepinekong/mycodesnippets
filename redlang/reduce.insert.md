
# Generate Code Block dynamically (code generation at runtime) with Reduce-Insert idiom


### Dynamically generate code



```

[loop 2 [print "hello"]][loop 2 [print "hello"]]
        
```


steps:


```

-1. generate [[print "Hello"]]
-2. insert "loop 2" inside [[print "Hello"]] => output: [loop 2 [print "hello"]]
-3. execute generated code [loop 2 [print "hello"]] 
=> output: {
    Hello 
    Hello
}
        
```




```

code: [print "hello"] ; [print "hello"]
code: reduce [code] ; #1. => output: [[print "Hello"]]
insert code [loop 2] ; #2. => output: [loop 2 [print "hello"]]    
do code ; #3. => output: {
;     Hello 
;     Hello
; } 
        
```


