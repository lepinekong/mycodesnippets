Red [
    Title: "move-mouse.red"
]

Article: [

    Title: {move mouse}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/powershell/winform/move-mouse.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/winform/move-mouse.red)
        }
        .Published-Url: http://mycodesnippets.space/powershell/winform/move-mouse
    ]  


    ; demo: [
    ;     .title: {Demo}
    ;     .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
    ;     .quote: {do read http://mycodesnippets.space/powershell/winform/src/move-mouse.red}
    ;     .image: 
    ; ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/powershell/winform/src/move-mouse.ps1
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/powershell/winform/src/move-mouse.ps1
        ]        
        .code/powershell: {
Add-Type -AssemblyName System.Windows.Forms 

$position = [System.Windows.Forms.Cursor]::Position  
$position.X = $position.X + 200

[System.Windows.Forms.Cursor]::Position = $position 
        }

    ]
]

do https://readable.red
markdown-gen 