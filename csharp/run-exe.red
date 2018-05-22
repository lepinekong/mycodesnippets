Red [
    Title: "run-exe.red"
]

Article: [

    Title: {run exe in c#}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/csharp/run.exe.red](https://github.com/lepinekong/mycodesnippets/blob/master/csharp/run.exe.red)
        }
        .Published-Url: http://mycodesnippets.space/csharp/run.exe
    ] 

    code: [
        .title: {Code}
        .code: {
using System.Diagnostics;

class Program
{
    static void Main()
    {
        Process.Start(@"C:\myapp.exe");
    }
}            
        }
    ]   
    
    run-exe: [

        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {
    "run-exe": {
        "prefix": "run-exe",
        "body": [
            "using System.Diagnostics;\r",
            "\r",
            "class Program\r",
            "{\r",
            "    static void Main()\r",
            "    {\r",
            "        Process.Start(@\"${1:c:\test\myapp.exe}\");\r",
            "    }\r",
            "} "
        ],
        "description": "run-exe"
    }
        }
        .title: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
using System.Diagnostics;

class Program
{
    static void Main()
    {
        Process.Start(@"{1:c:\test\myapp.exe}");
    }
}            
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 