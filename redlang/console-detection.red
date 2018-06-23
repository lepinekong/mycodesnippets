Red [
    Title: "console-detection.red"
]

Article: [

    Title: {Type of Red Console detection}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/console-detection.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/console-detection.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/console-detection
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/console-detection.red}
        .image: https://i.imgur.com/ZIPgUnS.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/iKqbaTh.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/console-detection.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/console-detection.red
        ]        
        .code/red: {
title: {Type of Red console detection}

either (system/console = none) [ 
    ; for compiled version (no console)
    view compose [
        title (title)
        text "Compiled Red version"
    ]
][ 
    either system/console/gui? [
        ; for interpreted version with gui console
        view/no-wait compose [
            title (title)
            text "Interpreted Red version with gui console"
        ]
    ][
        ; for interpreted version with non-gui console (vscode)
        view compose [
            title (title)
            text "interpreted version with non-gui console (vscode)"
        ]
    ]

]    
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 