Red [
    Title: "index.red"
]

Article: [

    Title: {VSCode Code Snippets for ReAdABLE Human Format}

    Index: [
        .title: {Index}
        .text: {[vscode.codesnippets.variables.red](./vscode.codesnippets.variables)}
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