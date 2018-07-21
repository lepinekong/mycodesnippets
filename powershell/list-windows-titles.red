Red [
    Title: "list-windows-titles.red"
]

Article: [

    Title: {list-windows-titles}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/powershell/win32/list-windows-titles.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/win32/list-windows-titles.red)
        }
        .Published-Url: http://mycodesnippets.space/powershell/win32/list-windows-titles
    ]  

    demo: [
        .title: {Demo}
        .text: {Paste the code snippet in Powershell console: }
        .image: https://i.imgur.com/Q4GyTYx.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/powershell/win32/src/list-windows-titles.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/powershell/win32/src/list-windows-titles.red
        ]        
        .code/powershell: {
Get-Process | 
where-Object {$_.mainWindowTitle} | 
format-table id,name,mainwindowtitle –AutoSize
        }
    ]
]

do https://readable.red
markdown-gen 