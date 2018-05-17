Red [
    Title: "vscode.markdown-gen.red"
]

Article: [

    Title: {VSCode Snippet for markdown-gen}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/vscode.readable.codesnippet.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.readable.codesnippet.red)
        }
        .Published-Url: http://mycodesnippets.space/vscode.readable.codesnippet
    ]    
    
    vscode.readable.codesnippet: [

        .title: {Will generate the lines necessary for calling markdown-gen:}
        .code: {
            "markdown-gen": {
                "prefix": "markdown-gen",
                "body": [
                    "do read http://readablehumanformat.com/lib.red\r",
                    "markdown-gen"
                ],
                "description": "markdown-gen"
            }                            
        }
        .text: {Output: }
        .code: {
            do read http://readablehumanformat.com/lib.red
            markdown-gen            
        }
    ]
]

; do read http://readablehumanformat.com/lib.red
; markdown-gen

do to-red-file
{C:\rebol\.system.user\.data\.activities\MyProjects\ReAdable.Format\lib\ReAdABLE.Human.Format.lib.red}
markdown-gen
