Red [
    Title: "datetime.red"
]

Article: [

    Title: {datetime}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/powershell/datetime.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/datetime.red)
        }
        .Published-Url: http://mycodesnippets.space/powershell/datetime
    ]    
    
    datetime: [

        .title: {Unix Time}
        .code: {
$date1 = Get-Date -Date "01/01/1970"
$date2 = Get-Date -Date "09/06/2017 07:42"
(New-TimeSpan -Start $date1 -End $date2).TotalSeconds
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 