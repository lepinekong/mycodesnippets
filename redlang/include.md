
# include


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/include.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/include.red)


### Zip file

- [http://mycodesnippets.space/redlang/src/include.zip](http://mycodesnippets.space/redlang/src/include.zip)
                        
![https://i.imgur.com/n9EtI66.png](https://i.imgur.com/n9EtI66.png)
                    

### flowchart.red

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/flowchart.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/flowchart.red)
                        


```red

Red [
    Title: "flowchart.red"
]

print "in flowchart.red: do %lib/shapes.red" ; don't use do read %lib/shapes.red or path won't work
do %lib/shapes.red
        
```



### %test/test.red

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/test/test.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/test/test.red)
                        


```red

Red [
    Title: "%test/test.red"
]

do %../flowchart.red
        
```



### %lib/shapes.red

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/lib/shapes.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/lib/shapes.red)
                        


```red

Red [
    Title: "%lib/shapes.red"
]

print {in shapes.red:
#include %includes/rectangle.red
#include %includes/circle.red
}
#include %includes/rectangle.red
#include %includes/circle.red
        
```



### %lib/includes/circle.red

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/lib/includes/circle.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/lib/includes/circle.red)
                        


```red

Red [
    Title: "circle.red"
]

print "in circle."
        
```



### %lib/includes/rectangle.red

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/lib/includes/rectangle.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/lib/includes/rectangle.red)
                        


```red

Red [
    Title: "%lib/includes/rectangle.red"
]

print "in rectangle."
        
```


