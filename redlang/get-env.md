
# get environment variable


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/get-env.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/get-env.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do read http://mycodesnippets.space/redlang/src/get-env.red

![https://i.imgur.com/YqeuqIo.png](https://i.imgur.com/YqeuqIo.png)
                    

### Code Snippet

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/get-env.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/get-env.red)
                        


```redcode

Red [
    Title: "get-env.red"
    Description: {
        Get USERNAME to call notepad to edit Powershell Profile
    }
]

powershell.profile: function [][
	username: get-env "username"
	call/show rejoin [{notepad.exe C:\Users\} username {\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1}]
]
powershell-profile: :powershell.profile

print {
    type in red console:
    powershell.profile
    or
    powershell-profile
}
        
```


