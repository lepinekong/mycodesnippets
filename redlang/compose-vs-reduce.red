Red [
    Title: "compose-vs-reduce.red"
]

Article: [

    Title: {compose-vs-reduce}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/compose-vs-reduce.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/compose-vs-reduce.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/compose-vs-reduce
    ]  

    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/compose-vs-reduce.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/compose-vs-reduce.red
        ]   
        .text: {Instead of:}     
        .code/redcode: {
repend [] [
    to-set-word 'id .id 
    to-set-word 'title .title 
    to-set-word 'description .description
] 
        }
        .text: {use: }
        .code/redcode: {
append [] [
    id: (.id) 
    title: (.title) 
    description: (.description)
]             
        }

    ]
]

do https://readable.red
markdown-gen 