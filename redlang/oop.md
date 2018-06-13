
# oop


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/oop.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/oop.red)


### Block to Object



```

Config: [
    Devices: [
        .title: {Devices Inventory}
        .path: %db/devices.csv
    ]

    Clothes: [
        .title: {Clothes Inventory}
        .path: %db/clothes.csv
    ]
]

oConfig: make Object! Config
words-of-config: words-of oConfig
values-of-config: values-of oConfig
        
```


