Red [
    Title: "index.red"
]

Article: [

    Title: {VSCode Snippets examples}

    vscode.codesnippets.variables: [
        .title: {How to create VSCode Snippet with variables}
        .text: {[vscode.codesnippets.variables](./vscode.codesnippets.variables)}       
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