Red [
    Title: "compile.red"
]

Article: [

    Title: {Compile in C# by Command Line}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/csharp/compile.red](https://github.com/lepinekong/mycodesnippets/blob/master/csharp/compile.red)
        }
        .Published-Url: http://mycodesnippets.space/csharp/compile
    ]    
    
    Code: [

        .title: {Code}
        .code/bash: {
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe /out:exefilename.exe SourceFilename.cs Program.cs
        }
    ]

    VSCode-Snippet: [

        .title: {VSCode Snippet}
        .code: {
    "csharp-compile": {
        "prefix": "csharp-compile",
        "body": [
            "C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\csc.exe /out:${1:classname}.exe ${1:classname}.cs Program.cs\r",
            ""
        ],
        "description": "csharp-compile"
    }
        }
        .text: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\csc.exe /out:${1:classname}.exe ${1:classname}.cs Program.cs   
        }
        
    ] 

]

do read http://readablehumanformat.com/lib.red
markdown-gen 

