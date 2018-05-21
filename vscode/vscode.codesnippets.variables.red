Red [
    Title: "VSCode Code Snippets"
]

Article: [

    Title: {VSCode Snippets Predefined Variables}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/vscode.codesnippets.variables.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.codesnippets.variables.red)
        }
        .Published-Url: http://mycodesnippets.space/vscode.codesnippets.variables
    ]    

    Variables-List: [
        .title: {Most usefull variables I use: }
        .code: {
            - ${TM_FILENAME:default} (The filename of the current document)
            - ${TM_FILENAME_BASE:default} (same as TM_FILENAME without extension)
            - ${CURRENT_YEAR_SHORT:default} (The current year's last two digits)
            - ${CURRENT_MONTH:default} (The month as two digits)
            - ${CURRENT_DATE:default} (The day of the month)
            - ${CURRENT_HOUR:default} (The current hour in 24-hour clock format)
            - ${CURRENT_MINUTE:default} (The current minute)
            - ${CURRENT_SECOND:default} (The current second)
            - ${TM_LINE_NUMBER:default} (line number)
        }
        .text: {Full List below:}
        .image: https://i.imgur.com/oinTKKP.png
    ]
    
    Variables-Usage: [

        .title: {Example with TM_FILENAME:default and TM_LINE_INDEX:default}
        .code: {
            "do-trace": {
                "prefix": "do-trace",
                "body": [
                    "            do-trace ${TM_LINE_INDEX:default} [\r",
                    "                ?? ",
                    "            ] %${TM_FILENAME:default}"
                ],
                "description": "do-trace"
            }	            
        }
        .text: {Example output:       
        }
        .code: {
            do-trace 757 [
                ??
            ] %ReAdABLE.Human.Format.lib.red            
        }    

        .text: {Other usefull variables for date:}
        .code: {
            ${CURRENT_YEAR_SHORT:default}.${CURRENT_MONTH:default}.${CURRENT_DATE:default}
        }    
        .text: {Reference Guide: }

        .link: [
            https://code.visualstudio.com/docs/editor/userdefinedsnippets
            "Creating your own snippets - code.visualstudio.com"
        ]


    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen
