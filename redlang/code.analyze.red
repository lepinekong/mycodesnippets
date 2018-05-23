Red [
    Title: "code.analyze.red"
]

Article: [

    Title: {code.analyze}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/code.analyze.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/code.analyze.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/code.analyze
    ]    
    
    code.analyze: [

        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {
Red [
    Title: "code.analyze.red"
]

.list-funcs: function[red-file[
    src: read red-file
    src-block: load src
    list: .func.name.list src-block 
]
list-funcs: :.list-funcs

.func.name.list: function[src-block /local .func-name-list][

    .func-name-list: copy []
    foreach element src-block [
        if ((type? element) = set-word!) [
            element-src: select src-block element
            if element-src = 'function [
                append .func-name-list to-word element
            ]
            
        ]
    ]
    return .func-name-list
]


collect-funcs: copy []
.code.analyze: function[code][

    code-copy: copy code
    
    forall code [
        i: index? code
        element: code/1
        ; type: type? element
        ; if (type = set-word!) [
        if set-word? element [
            j: i + 1
            next-element: code-copy/:j
            if (next-element = 'func) or (next-element = 'function) [
                func-collect: copy []
                append func-collect compose/deep [(element) (next-element)]
                j: i + 2
                append/only func-collect code-copy/:j
                j: i + 3
                append/only func-collect code-copy/:j               
                append collect-funcs func-collect    
        
            ]
        ]

        if block? element [
            .code.analyze element
        ]
    ] 
    return collect-funcs    
]

.analyze-code: :.code.analyze
analyze-code: :.analyze-code

        }
        .title: {VSCode Snippet to use it:}
        .code: {
{
    "code-analyze": {
        "prefix": "code-analyze",
        "body": [
            "do read %../do-trace.red\r",
            "do read %../code.analyze.red\r",
            "list-funcs ${1:red-file-path-or-url}  \r",
            "get-func-body ${2:func-name} {1:red-file-path-or-url}  "
        ],
        "description": "code-analyze"
    }
}         
        }
        .text: {to recreate it with Easy Snippet:}
        .code: {
do read %../do-trace.red
do read %../code.analyze.red
list-funcs {1:red-file-path-or-url}  
get-func-body {2:func-name} {1:red-file-path-or-url}          
        }
    ]
]


do read http://readablehumanformat.com/lib.red
markdown-gen 