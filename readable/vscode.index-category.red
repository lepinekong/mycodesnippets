Red [
    Title: "vscode.index-category.red"
]

Article: [

    Title: {vscode.index-category}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/readable/vscode.index-category.red](https://github.com/lepinekong/mycodesnippets/blob/master/readable/vscode.index-category.red)
        }
        .Published-Url: http://mycodesnippets.space/readable/vscode.index-category
    ]    
    
    vscode.index-category: [

        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {
    "index-category": {
        "prefix": "index-category",
        "body": [
            "    ${1:Index-Category}: [\r",
            "        .title: {${1:Index-Category}}\r",
            "        .links: [\r",
            "            \"${2:foldername}\" %./${2:foldername}/\r",
            "        ]\r",
            "    ] "
        ],
        "description": "index-category"
    } 
        }
        .title: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
    {1:Index-Category}: [
        .title: {{1:Index-Category}}
        .links: [
            "{2:foldername}" %./{2:foldername}/
        ]
    ]             
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 

