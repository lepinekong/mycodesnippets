Red [
    Title: "files.red"
]

Article: [

    Title: {files}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/powershell/files.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/files.red)
        }
        .Published-Url: http://mycodesnippets.space/powershell/files
    ]    
    
    filter-file-types: [

        .title: {Generate empty text files for files of certain types}
        .code: {
$Dir = get-childitem $PSScriptRoot -recurse
# $Dir |get-member
$List = $Dir | where {$_.extension -eq ".jpg"}
#$List | format-table name
foreach ($element in $List) {
    $filename = [io.path]::GetFileNameWithoutExtension($element)
    $file = $PSScriptRoot + "\" + $filename + ".txt"
    New-Item $file -type file
}
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 