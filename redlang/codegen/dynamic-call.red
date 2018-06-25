Red [
    Title: "dynamic-call.red"
]

Article: [

    Title: {dynamic-call}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/codegen/dynamic-call.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/codegen/dynamic-call.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/codegen/dynamic-call
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/codegen/src/dynamic-call.red}
        .image: https://i.imgur.com/phDVUud.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/codegen/src/dynamic-call.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/codegen/src/dynamic-call.red
        ]        
        .code/red: {
show-message: function [/refine msg /popup][

    if not refine [
        msg: "Hello"
        ?? msg
    ]

    either popup [
        view compose [
            text (msg)
        ]
    ][
        print msg
    ]
]

popup: function [msg][
    command: reduce [load "show-message/popup/refine"]
    append command to-word 'msg
    probe command ; [show-message/popup/refine msg]

    ;do [show-message/popup/refine msg] 
    do command ; same as above
]

popup "test"
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 