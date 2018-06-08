
# Compile in C# by Command Line


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/csharp/compile.red](https://github.com/lepinekong/mycodesnippets/blob/master/csharp/compile.red)


### Code



```bat

C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe /out:exefilename.exe SourceFilename.cs Program.cs
        
```



### VSCode Snippet



```shell

    "csharp-compile": {
        "prefix": "csharp-compile",
        "body": [
            "C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\csc.exe /out:${1:classname}.exe ${1:classname}.cs Program.cs\r",
            ""
        ],
        "description": "csharp-compile"
    }
        
```


If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):


```shell

C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\csc.exe /out:${1:classname}.exe ${1:classname}.cs Program.cs   
        
```


