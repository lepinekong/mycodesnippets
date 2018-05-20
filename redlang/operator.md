
# Creating an operator


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/operator.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/operator.red)


### How to create the pipe operator:



```


pipe: function [x 'y] [
    value: get y value x
] 

|: make op! :pipe
        
```



### Examples:



```

[1 2 3] | 'rejoin ; -> 123
"ABC" | 'lowercase ; abc            
        
```



### References

- [koba-yu/pipeline-operator.red](https://gist.github.com/koba-yu/eee26c197685f39632d83d9b8c1db642)
                        
