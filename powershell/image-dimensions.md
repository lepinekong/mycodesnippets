
# image-dimensions


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/powershell/image-dimensions.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/image-dimensions.red)


### Demo

Paste code snippet in Powershell console: 
![https://i.imgur.com/8TaAoKW.png](https://i.imgur.com/8TaAoKW.png)
                    

### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/src/image/dimensions.ps1)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/powershell/src/image/dimensions.ps1)
                        


```powershell

add-type -AssemblyName System.Drawing
$png = New-Object System.Drawing.Bitmap 'c:\test\box.png'
$png.Height
$png.Width
$png.PhysicalDimension
$png.HorizontalResolution
$png.VerticalResolution
        
```


