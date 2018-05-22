Red [
    Title: "monitor-files.red"
]

Article: [

    Title: {monitor files for creation/modification and process}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/csharp/monitor-file-creation.red](https://github.com/lepinekong/mycodesnippets/blob/master/csharp/monitor-file-creation.red)
        }
        .Published-Url: http://mycodesnippets.space/csharp/monitor-file-creation
    ]    

    Code: [
        .title: {Code}
        .code/csharp: {
using System;
using System.IO;
using System.Security.Permissions;
using System.Diagnostics;

public class Watcher
{

    public static void Main()
    {
    Run();

    }

    [PermissionSet(SecurityAction.Demand, Name="FullTrust")]
    public static void Run()
    {
        string[] args = System.Environment.GetCommandLineArgs();

        // If a directory is not specified, exit program.
        if(args.Length != 2)
        {
            // Display the proper way to call the program.
            Console.WriteLine("Usage: Watcher.exe (directory)");
            return;
        }

        // Create a new FileSystemWatcher and set its properties.
        FileSystemWatcher watcher = new FileSystemWatcher();
        // watcher.Path = args[1];
        watcher.Path = @"c:\test";    
        /* Watch for changes in LastAccess and LastWrite times, and
           the renaming of files or directories. */
        watcher.NotifyFilter = NotifyFilters.LastAccess | NotifyFilters.LastWrite
            | NotifyFilters.FileName | NotifyFilters.DirectoryName;
        // Only watch text files.
        watcher.Filter = "deploy.txt";

        // Add event handlers.
        // watcher.Changed += new FileSystemEventHandler(OnChanged);
        watcher.Created += new FileSystemEventHandler(OnCreated);
        //watcher.Deleted += new FileSystemEventHandler(OnChanged);
        watcher.Renamed += new RenamedEventHandler(OnRenamed);

        // Begin watching.
        watcher.EnableRaisingEvents = true;

        // Wait for the user to quit the program.
        Console.WriteLine("Press \'q\' to quit the sample.");
        while(Console.Read()!='q');
    }

    // Define the event handlers.
    private static void OnCreated(object source, FileSystemEventArgs e)
    {
        // Specify what is done when a file is changed, created, or deleted.
        Console.WriteLine("File: " +  e.FullPath + " " + e.ChangeType);
        File.Delete( @"c:\test\deploy.txt");       
        Process.Start("CopyFolder.exe");

    }

    private static void OnRenamed(object source, RenamedEventArgs e)
    {
        Console.WriteLine("File: " +  e.FullPath + " " + e.ChangeType);
        File.Delete( @"c:\test\deploy.txt");       
        Process.Start("CopyFolder.exe");
    }
}
        }
    ]
    
    monitor-file-creation: [
        .code: {VSCode Snippet}
        .text: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {
{
    "monitor-files": {
        "prefix": "monitor-files",
        "body": [
            "using System;\r",
            "using System.IO;\r",
            "using System.Security.Permissions;\r",
            "using System.Diagnostics;\r",
            "\r",
            "public class Watcher\r",
            "{\r",
            "\r",
            "    public static void Main()\r",
            "    {\r",
            "    Run();\r",
            "\r",
            "    }\r",
            "\r",
            "    [PermissionSet(SecurityAction.Demand, Name=\"FullTrust\")]\r",
            "    public static void Run()\r",
            "    {\r",
            "        string[] args = System.Environment.GetCommandLineArgs();\r",
            "\r",
            "        // If a directory is not specified, exit program.\r",
            "        if(args.Length != 2)\r",
            "        {\r",
            "            // Display the proper way to call the program.\r",
            "            Console.WriteLine(\"Usage: Watcher.exe (directory)\");\r",
            "            return;\r",
            "        }\r",
            "\r",
            "        // Create a new FileSystemWatcher and set its properties.\r",
            "        FileSystemWatcher watcher = new FileSystemWatcher();\r",
            "        // watcher.Path = args[1];\r",
            "        watcher.Path = @\"${1:path-to-watch}\";    \r",
            "        /* Watch for changes in LastAccess and LastWrite times, and\r",
            "           the renaming of files or directories. */\r",
            "        watcher.NotifyFilter = NotifyFilters.LastAccess | NotifyFilters.LastWrite\r",
            "            | NotifyFilters.FileName | NotifyFilters.DirectoryName;\r",
            "        // Only watch text files.\r",
            "        watcher.Filter = \"deploy.txt\";\r",
            "\r",
            "        // Add event handlers.\r",
            "        // watcher.Changed += new FileSystemEventHandler(OnChanged);\r",
            "        watcher.Created += new FileSystemEventHandler(OnCreated);\r",
            "        //watcher.Deleted += new FileSystemEventHandler(OnChanged);\r",
            "        watcher.Renamed += new RenamedEventHandler(OnRenamed);\r",
            "\r",
            "        // Begin watching.\r",
            "        watcher.EnableRaisingEvents = true;\r",
            "\r",
            "        // Wait for the user to quit the program.\r",
            "        Console.WriteLine(\"Press \'q\' to quit the sample.\");\r",
            "        while(Console.Read()!='q');\r",
            "    }\r",
            "\r",
            "    // Define the event handlers.\r",
            "    private static void OnCreated(object source, FileSystemEventArgs e)\r",
            "    {\r",
            "        // Specify what is done when a file is changed, created, or deleted.\r",
            "        Console.WriteLine(\"File: \" +  e.FullPath + \" \" + e.ChangeType);\r",
            "        File.Delete( @\"${1:path-to-watch}\deploy.txt\");       \r",
            "        Process.Start(\"${2:process-to-start}.exe\");\r",
            "\r",
            "    }\r",
            "\r",
            "    private static void OnRenamed(object source, RenamedEventArgs e)\r",
            "    {\r",
            "        Console.WriteLine(\"File: \" +  e.FullPath + \" \" + e.ChangeType);\r",
            "        File.Delete( @\"${1:path-to-watch}\deploy.txt\");       \r",
            "        Process.Start(\"${2:process-to-start}.exe\");\r",
            "    }\r",
            "}\r",
            ""
        ],
        "description": "monitor-files"
    }
}
        }
        .text: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
using System;
using System.IO;
using System.Security.Permissions;
using System.Diagnostics;

public class Watcher
{

    public static void Main()
    {
    Run();

    }

    [PermissionSet(SecurityAction.Demand, Name="FullTrust")]
    public static void Run()
    {
        string[] args = System.Environment.GetCommandLineArgs();

        // If a directory is not specified, exit program.
        if(args.Length != 2)
        {
            // Display the proper way to call the program.
            Console.WriteLine("Usage: Watcher.exe (directory)");
            return;
        }

        // Create a new FileSystemWatcher and set its properties.
        FileSystemWatcher watcher = new FileSystemWatcher();
        // watcher.Path = args[1];
        watcher.Path = @"{1:path-to-watch}";    
        /* Watch for changes in LastAccess and LastWrite times, and
           the renaming of files or directories. */
        watcher.NotifyFilter = NotifyFilters.LastAccess | NotifyFilters.LastWrite
            | NotifyFilters.FileName | NotifyFilters.DirectoryName;
        // Only watch text files.
        watcher.Filter = "deploy.txt";

        // Add event handlers.
        // watcher.Changed += new FileSystemEventHandler(OnChanged);
        watcher.Created += new FileSystemEventHandler(OnCreated);
        //watcher.Deleted += new FileSystemEventHandler(OnChanged);
        watcher.Renamed += new RenamedEventHandler(OnRenamed);

        // Begin watching.
        watcher.EnableRaisingEvents = true;

        // Wait for the user to quit the program.
        Console.WriteLine("Press \'q\' to quit the sample.");
        while(Console.Read()!='q');
    }

    // Define the event handlers.
    private static void OnCreated(object source, FileSystemEventArgs e)
    {
        // Specify what is done when a file is changed, created, or deleted.
        Console.WriteLine("File: " +  e.FullPath + " " + e.ChangeType);
        File.Delete( @"{1:path-to-watch}\deploy.txt");       
        Process.Start("{2:process-to-start}.exe");

    }

    private static void OnRenamed(object source, RenamedEventArgs e)
    {
        Console.WriteLine("File: " +  e.FullPath + " " + e.ChangeType);
        File.Delete( @"{1:path-to-watch}\deploy.txt");       
        Process.Start("{2:process-to-start}.exe");
    }
}
            
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 