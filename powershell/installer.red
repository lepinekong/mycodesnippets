Red [
    Title: "installer.red"
]

Article: [

    Title: {installer}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/powershell/installer.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/installer.red)
        }
        .Published-Url: http://mycodesnippets.space/powershell/installer
    ]    
    
    installer: [

        .title: {Oneliner Install (ex. Redlang)}
        .code/powershell: {
New-Item -ItemType Directory -Force -Path C:\red;(New-Object System.Net.WebClient).DownloadFile('https://static.red-lang.org/dl/win/red-063.exe','c:\red\red.exe');Start-Process -Filepath 'c:\red\red.exe'
        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 