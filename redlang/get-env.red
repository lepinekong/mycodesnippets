Red [
    Title: "get-env.red"
]

Article: [

    Title: {get environment variable}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/get-env.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/get-env.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/get-env
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/get-env.red}
        .image: https://i.imgur.com/YqeuqIo.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/get-env.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/get-env.red
        ]        
        .code/redcode: {
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
        }

    ]
]

do https://readable.red
markdown-gen 