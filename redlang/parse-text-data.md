
# parse.text.data


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/parse.text.data.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/parse.text.data.red)


### Usage



```

            do read http://redlang.red/parse-text-data.red
            parse-text-data {
Adsense Revenue	300
Sponsors	500
Gifts	50
Others	58  
            }            
        
```



### Source code

![https://i.imgur.com/2FGyBgk.png](https://i.imgur.com/2FGyBgk.png)
                    


```

.parse-text-data: function[.data][

    comment {
        ; data can be pasted from excel https://office.live.com/start/Excel.aspx
        ; example:
        data: parse-text-data {
            Adsense Revenue	300
            Sponsors	500
            Gifts	50
            Others	58  
        }
        ?? data
    }

    data: .data

    delimiters: charset "
	
" ; see http://www.rebol.com/r3/docs/datatypes/char.html
    data-block: split data delimiters
    forall data-block [
        data: data-block/1
        change data (trim/head/tail data)
    ]

    data-block0: copy data-block
    data-block: copy []
    forall data-block0 [
        data: data-block0/1
        if not (data = "") [
            try [
data: to-float data
            ]
            append data-block data
        ] 
    ]

    ;?? data-block ask "pause..." ; for debugging
    return data-block ; data-block: ["Adsense Revenue" 300.0 "Sponsors" 500.0 "Gifts" 50.0 "Others" 58.0]

]

parse-text-data: :.parse-text-data

data: parse-text-data {
    Adsense Revenue	300
    Sponsors	500
    Gifts	50
    Others	58  
}
?? data
        
```



### VSCode Snippet



```

    "parse-text-data": {
        "prefix": "parse-text-data",
        "body": [
            "do read http://redlang.red/parse-text-data.red\r",
            "parse-text-data {\r",
            "    ${1:label-number-pairs}\r",
            "}"
        ],
        "description": "parse-text-data"
    }            
        
```


To recreate the snippet, use:


```

            do read http://redlang.red/parse-text-data.red
            parse-text-data {
{1:label-number-pairs}
            }
        
```


