
# installer


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/powershell/installer.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/installer.red)


### Oneliner Install (ex. Redlang)



```powershell

New-Item -ItemType Directory -Force -Path C:\red;(New-Object System.Net.WebClient).DownloadFile('https://static.red-lang.org/dl/win/red-063.exe','c:\red\red.exe');Start-Process -Filepath 'c:\red\red.exe'
        
```


