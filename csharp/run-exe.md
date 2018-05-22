
# run exe in c#


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/csharp/run.exe.red](https://github.com/lepinekong/mycodesnippets/blob/master/csharp/run.exe.red)


### Code



```

using System.Diagnostics;

class Program
{
    static void Main()
    {
        Process.Start(@"C:\myapp.exe");
    }
}            
        
```



### Paste this snippet in red User.Snippets (don’t forget the “,” separator):



```

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
        
```



### If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):



```

using System.Diagnostics;

class Program
{
    static void Main()
    {
        Process.Start(@"{1:c:\test\myapp.exe}");
    }
}            
        
```


