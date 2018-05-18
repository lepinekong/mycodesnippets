Red [
    Title: "vscode.myitjournals.red"
]

Article: [

    Title: {vscode.myitjournals}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/vscode.myitjournals.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.myitjournals.red)
        }
        .Published-Url: http://mycodesnippets.space/vscode.myitjournals
    ]    
    
    vscode.myitjournals: [

        .title: {vscode snippet for myitjournals post:}
        .code: {
            Red [
                Title: "{CURRENT_YEAR_SHORT:default}.{CURRENT_MONTH:default}.{CURRENT_DATE:default}"
            ]

            Journal: [

                Title: "{1:title}"

                Debug-1: [

                    .commit: #{2:gitcommit}
                    .datetime: {CURRENT_YEAR_SHORT:default}.{CURRENT_MONTH:default}.{CURRENT_DATE:default} {CURRENT_HOUR:default}:{CURRENT_MINUTE:default}:{CURRENT_SECOND:default}
                    .title: {
                        Debug-1: 
                    }
                    .text: {}
                    .code: {

                    } 
                    .image:                    
                ]

            ]
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen   