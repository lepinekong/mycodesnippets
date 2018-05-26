Red [
    Title: "vscode.myitbookmarks-index.red"
]

Article: [

    Title: {vscode.myitbookmarks-index}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/readable/vscode.myitbookmarks-index.red](https://github.com/lepinekong/mycodesnippets/blob/master/readable/vscode.myitbookmarks-index.red)
        }
        .Published-Url: http://mycodesnippets.space/readable/vscode.myitbookmarks-index
    ]    
    
    vscode.myitbookmarks-index: [

        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {

        }
        .title: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
Red [
    Title: "{TM_DIRECTORY:default} Index"
]

Source: [
    .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
    .text: {[http://myitbookmarks.space/{TM_FILENAME:default}](https://github.com/lepinekong/myitbookmarks/blob/master/{TM_FILENAME:default})
    }
    .Published-Url: http://myitbookmarks.space/{TM_FILENAME_BASE:default}
]
            
Article: [

    Title: {Index of {TM_DIRECTORY:default}}

    {1:category}: [
        .title: {} 
        .links: [
            {2:filenamewithoutextension} %./{2:filenamewithoutextension}

        ]    
    ]

]
        
do read http://readablehumanformat.com/lib.red
markdown-gen    
            
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 
