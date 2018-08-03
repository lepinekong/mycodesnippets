Red [
    Title: "cmd.red"
]

Article: [

    Title: {cmd.exe /c}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/dos/cmd.red](https://github.com/lepinekong/mycodesnippets/blob/master/dos/cmd.red)
        }
        .Published-Url: http://mycodesnippets.space/dos/cmd
    ]  
    
    code-snippet: [

        .title: {Example} 
        .text: {Open a dos prompt and type:}   
        .code/dos: {
            cmd.exe /c "C:\nodejs\npm.cmd" install -g jsdoc
        }
        .text: {or:}
        .code/dos: {
            powershell -c cmd.exe /c "C:\nodejs\npm.cmd" install -g jsdoc
        }
        .image: https://i.imgur.com/sSuzFb7.png

    ]
]

do https://readable.red
markdown-gen 