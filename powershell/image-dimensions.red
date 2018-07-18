Red [
    Title: "image-dimensions.red"
]

Article: [

    Title: {image-dimensions}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/powershell/image-dimensions.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/image-dimensions.red)
        }
        .Published-Url: http://mycodesnippets.space/powershell/image-dimensions
    ]  


    demo: [
        .title: {Demo}
        .text: {Paste code snippet in Powershell console: }
        .image: https://i.imgur.com/8TaAoKW.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/powershell/src/image/image-dimensions.ps1
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/powershell/src/image/image-dimensions.ps1
        ]        
        .code/powershell: {
add-type -AssemblyName System.Drawing
$png = New-Object System.Drawing.Bitmap 'c:\test\box.png'
$png.Height
$png.Width
$png.PhysicalDimension
$png.HorizontalResolution
$png.VerticalResolution
        }

    ]
]

do https://readable.red
markdown-gen 