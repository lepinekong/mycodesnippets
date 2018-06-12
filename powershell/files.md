
# files


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/powershell/files.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/files.red)


### Generate empty text files for files of certain types



```

$Dir = get-childitem $PSScriptRoot -recurse
# $Dir |get-member
$List = $Dir | where {$_.extension -eq ".jpg"}
#$List | format-table name
foreach ($element in $List) {
    $filename = [io.path]::GetFileNameWithoutExtension($element)
    $file = $PSScriptRoot + "\" + $filename + ".txt"
    New-Item $file -type file
}
        
```


