
# move mouse


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/powershell/winform/move-mouse.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/winform/move-mouse.red)


### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/winform/src/move-mouse.ps1)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/powershell/winform/src/move-mouse.ps1)
                        


```powershell

Add-Type -AssemblyName System.Windows.Forms 

$position = [System.Windows.Forms.Cursor]::Position  
$position.X = $position.X + 200

[System.Windows.Forms.Cursor]::Position = $position 
        
```


