Red [
    Title: "index.red"
]

Article: [

    Title: {VSCode Code Snippets for ReAdABLE Human Format}

    Index: [
        .title: {Index}
        .text: {[vscode.markdown-gen.red](./vscode.markdown-gen)}
        .text: {[vscode.readable.tracing.red](./vscode.readable.tracing)}
        .text: {[vscode.mycodesnippets.red](./vscode.mycodesnippets)}
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