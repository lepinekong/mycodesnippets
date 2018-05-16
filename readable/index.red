Red [
    Title: "index.red"
]

Article: [

    Title: {VSCode Code Snippets for ReAdABLE Human Format}

    Intro: [
        .text: {
            [ReAdABLE Human Format](http://readablehumanformat.com) is an easy format to generate markdown with better semantics and more automation capability.
        }
    ]

    vscode.markdown-gen: [
        .title: {VSCode Snippet for markdown-gen}
        .text: {[vscode.markdown-gen](./vscode.markdown-gen)
        }        
    ]

    vscode.markdown-index: [
        .title: {vscode snippet for ReAdABLE index skeleton}
        .text: {[vscode.markdown-index](./vscode.markdown-index)
        }
    ]    

    vscode.readable.tracing: [
        .title: {VSCode Snippet  for do-trace}
        .text: {[vscode.readable.tracing](./vscode.readable.tracing)
        }        
    ]

    vscode.mycodesnippets: [
        .title: {VSCode Snippet for mycodesnippets}
        .text: {[vscode.mycodesnippets](./vscode.mycodesnippets)
        }
    ]
]

; files: read %.
; foreach file files [
;     either (file <> %index.red) and (file <> %index.md) [

;     ][

;     ]
; ]

do read http://readablehumanformat.com/lib.red
markdown-gen