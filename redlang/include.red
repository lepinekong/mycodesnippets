Red [
    Title: "include.red"
]

Article: [

    Title: {include}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/include.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/include.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/include
    ]  


    demo: [
        .title: {Zip file}
        .links: [http://mycodesnippets.space/redlang/src/include.zip]
        .image: https://i.imgur.com/Uviyf9H.png
    ]      
    
    flowchart.red: [

        .title: {flowchart.red}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/flowchart.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/flowchart.red
        ]        
        .code/red: {
Red [
    Title: "flowchart.red"
]

print "in flowchart.red: do %lib/shapes.red" ; don't use do read %lib/shapes.red or path won't work
do %lib/shapes.red
        }

    ] 


    test.red: [

        .title: {%test/test.red}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/test/test.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/test/test.red
        ]        
        .code/red: {
Red [
    Title: "%test/test.red"
]

do %../flowchart.red
        }
    ] 

    shapes.red: [

        .title: {%lib/shapes.red}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/lib/shapes.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/lib/shapes.red
        ]        
        .code/red: {
Red [
    Title: "%lib/shapes.red"
]

print {in shapes.red:
#include %includes/rectangle.red
#include %includes/circle.red
}
#include %includes/rectangle.red
#include %includes/circle.red
        }
    ] 

    circle.red: [

        .title: {%lib/includes/circle.red}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/lib/includes/circle.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/lib/includes/circle.red
        ]        
        .code/red: {
Red [
    Title: "circle.red"
]

print "in circle."
        }
    ]  

    rectangle.red: [

        .title: {%lib/includes/rectangle.red}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/include/lib/includes/rectangle.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/include/lib/includes/rectangle.red
        ]        
        .code/red: {
Red [
    Title: "%lib/includes/rectangle.red"
]

print "in rectangle."
        }
    ]                  
]

do read http://readablehumanformat.com/lib.red
markdown-gen 