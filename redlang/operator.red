Red [
    Title: "operator.red"
]

Article: [

    Title: {Creating an operator}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/operator.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/operator.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/operator
    ]    
    
    operator: [

        .title: {How to create the pipe operator:}
        .code: {

            pipe: function [x 'y] [
                value: get y value x
            ] 

            |: make op! :pipe
        }
        .title: {Examples:}
        .code: {
            [1 2 3] | 'rejoin ; -> 123
            "ABC" | 'lowercase ; abc            
        }
        .title: {References}
        .link: [
            {koba-yu/pipeline-operator.red} https://gist.github.com/koba-yu/eee26c197685f39632d83d9b8c1db642
        ]
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 