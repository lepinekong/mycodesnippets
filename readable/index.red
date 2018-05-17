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

    vscode.readable.rendering: [
        .title: "Rendering Markdown"
        .text: {VSCode Snippets for rendering ReAdABLE Human Format in Markdown (and other formats in the future):}
        .links: [
            "markdown-gen" %./vscode.markdown-gen
        ]
    ]    

    vscode.readable.page.index: [
        .title: "Page Index Generator"
        .text: {VSCode Snippets for generating a page index in ReAdABLE Human Format:}
        .links: [
            "markdown-index" %./vscode.markdown-index
        ]
    ]

    vscode.mycodesnippets: [
        .title: "KMS Content Skeleton"
        .text: {VSCode Snippet to create content skeleton for Knowledge Management System Blog:}
        .links: [
            "myMementos" %./vscode.mymementos
            "myCodeSnippets" %./vscode.mycodesnippets
        ]
    ]

    vscode.readable.tracing: [
        .title: "Debugging Utility"
        .text: {VSCode Snippet for developers who can use do-trace for debugging}
        .links: [
            "do-trace" %./vscode.readable.tracing
        ]      
    ]    
]

; files: read %.
; foreach file files [
;     either (file <> %index.red) and (file <> %index.md) [

;     ][

;     ]
; ]

; do read http://readablehumanformat.com/lib.red
; markdown-gen

do to-red-file
{C:\rebol\.system.user\.data\.activities\MyProjects\ReAdable.Format\lib\ReAdABLE.Human.Format.lib.red}
markdown-gen