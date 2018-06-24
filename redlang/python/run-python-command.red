Red [
    Title: "run-python-command.red"
]

Article: [

    Title: {run-python-command}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/python/run-python-command.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/python/run-python-command.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/python/run-python-command
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/python/src/run-python-command.red}
        .image: https://i.imgur.com/JXRjkqg.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/python/src/run-python-command.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/python/src/run-python-command.red
        ]        
        .code/red: {
out: copy "" call/output {C:\Python36\python.exe -c "print('Hello from Python')"} out
?? out
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 