
# Barchart in [red-lang.org](http://red-lang.org)


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/barchart.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/barchart.red)


### Code

![https://i.imgur.com/muwJRSS.png](https://i.imgur.com/muwJRSS.png)
                    


```redcode

            barchart: does [
data: copy []
repeat i 12 [
    append data random 100
]

months: [Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec]
win: copy [title "Quick Barchart in Red-lang"]
repeat i length? data [
    append win compose [
        text bold 30 (form months/:i)
        b: button (as-pair (data/:i * 12) 40) (mold data/:i)
        return
    ]
]
view win    
            ]
            barchart
        
```



### VSCode Snippet



```

            "barchart": {
"prefix": "barchart",
"body": [
    "barchart: does [\r",
    "    data: copy []\r",
    "    repeat i 12 [\r",
    "        append data random 100\r",
    "    ]\r",
    "    \r",
    "    months: [Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec]\r",
    "    win: copy [title \"Quick Barchart in Red-lang\"]\r",
    "    repeat i length? data [\r",
    "        append win compose [\r",
    "            text bold 30 (form months/:i)\r",
    "            b: button (as-pair (data/:i * 12) 40) (mold data/:i)\r",
    "            return\r",
    "        ]\r",
    "    ]\r",
    "    view win    \r",
    "]\r",
    "barchart"
],
"description": "barchart"
            }
        
```


