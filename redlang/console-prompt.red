Red [
    Title: "console-prompt.red"
]

Article: [

    Title: {Console Prompt Customization}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/console-prompt.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/console-prompt.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/console-prompt
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/console-prompt.red}
        .image: 
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: 
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/console-prompt.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/console-prompt.red
        ]        
        .code/redlang: {
system/console/prompt: does [

    now-time: now/time
    either ((now-time > 12:00) and (now-time < 14:00)) [
        rejoin [now-time " Lunch Time!!! >> "]
    ][
        rejoin [to-local-file system/options/path " > " now-time " >> "]
    ]
]

        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 