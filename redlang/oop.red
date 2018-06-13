Red [
    Title: "oop.red"
]

Article: [

    Title: {oop}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/oop.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/oop.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/oop
    ]    
    
    OOP: [

        .title: {Block to Object}
        .code: {
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
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 