Red [
    Title: "vscode.mymementos.red"
]

Article: [

    Title: {vscode.mymementos}

    Source: [
        .title: {ReAdABLE Source}
        .text: {[http://mycodesnippets.space/vscode.mymementos.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode.mymementos.red)
        }
        .Published-Url: http://mycodesnippets.space/vscode.mymementos
    ]    
    
    vscode.mymementos: [

        .title: {vscode mymementos snippet:}
        .code: {
            "myMementos": {
                "prefix": "myMementos",
                "body": [
                    "Red [\r",
                    "    Title: \"${TM_FILENAME:default}\"\r",
                    "]\r",
                    "\r",
                    "Memento: [\r",
                    "\r",
                    "    Title: {${TM_FILENAME:default}}\r",
                    "\r",
                    "    Step-1: [\r",
                    "        .title: {}\r",
                    "        .text: {\r",
                    "        }\r",
                    "    ]\r",
                    "]"
                ],
                "description": "myMementos"
            }
        }
        .text: {to recreate it with Easy Snippet:}
        .code: {
            Red [
                Title: "{TM_FILENAME:default}"
            ]

            Memento: [

                Title: {{TM_FILENAME:default}}

                Step-1: [
                    .title: {}
                    .text: {
                    }
                ]
            ]            
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen   