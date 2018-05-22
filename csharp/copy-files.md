
# Copy files


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/csharp/copy.files.red](https://github.com/lepinekong/mycodesnippets/blob/master/csharp/copy.files.red)


### Csharp code



```csharp

using System;
using System.IO;

class DirectoryCopyExample
{
    static void Main()
    {
        string destinationFolder = @"C:\DestinationFolder\";
        
        Directory.CreateDirectory(destinationFolder);

        if (Directory.Exists(destinationFolder)) {
            Directory.Delete(destinationFolder, true);
        }

        Directory.CreateDirectory(destinationFolder);

        DirectoryCopy(@"c:\SourceFolder\",destinationFolder, true);
    }

    private static void DirectoryCopy(string sourceDirName, string destDirName, bool copySubDirs)
    {
        // Get the subdirectories for the specified directory.
        DirectoryInfo dir = new DirectoryInfo(sourceDirName);

        Console.WriteLine("Start copying...");

        if (!dir.Exists)
        {
            throw new DirectoryNotFoundException(
"Source directory does not exist or could not be found: "
+ sourceDirName);
        }

        DirectoryInfo[] dirs = dir.GetDirectories();
        // If the destination directory doesn't exist, create it.
        if (!Directory.Exists(destDirName))
        {
            Directory.CreateDirectory(destDirName);
        }

        // Get the files in the directory and copy them to the new location.
        FileInfo[] files = dir.GetFiles();
        foreach (FileInfo file in files)
        {
            string temppath = Path.Combine(destDirName, file.Name);
            file.CopyTo(temppath, false);
        }

        // If copying subdirectories, copy them and their contents to new location.
        if (copySubDirs)
        {
            foreach (DirectoryInfo subdir in dirs)
            {
string temppath = Path.Combine(destDirName, subdir.Name);
DirectoryCopy(subdir.FullName, temppath, copySubDirs);
            }

        }

        Console.WriteLine("Files copied.");

    }
}            
        
```



### VSCode Snippet



```

    "copy.files": {
        "prefix": "copy.files",
        "body": [
            "using System;\r",
            "using System.IO;\r",
            "\r",
            "class DirectoryCopyExample\r",
            "{\r",
            "    static void Main()\r",
            "    {\r",
            "        string destinationFolder = @\"${1:DestinationFolder}\";\r",
            "        \r",
            "        Directory.CreateDirectory(destinationFolder);\r",
            "\r",
            "        if (Directory.Exists(destinationFolder)) {\r",
            "            Directory.Delete(destinationFolder, true);\r",
            "        }\r",
            "\r",
            "        Directory.CreateDirectory(destinationFolder);\r",
            "\r",
            "        DirectoryCopy(@\"${2:SourceFolder}\",destinationFolder, true);\r",
            "    }\r",
            "\r",
            "    private static void DirectoryCopy(string sourceDirName, string destDirName, bool copySubDirs)\r",
            "    {\r",
            "        // Get the subdirectories for the specified directory.\r",
            "        DirectoryInfo dir = new DirectoryInfo(sourceDirName);\r",
            "\r",
            "        Console.WriteLine(\"Start copying...\");\r",
            "\r",
            "        if (!dir.Exists)\r",
            "        {\r",
            "            throw new DirectoryNotFoundException(\r",
            "\"Source directory does not exist or could not be found: \"\r",
            "+ sourceDirName);\r",
            "        }\r",
            "\r",
            "        DirectoryInfo[] dirs = dir.GetDirectories();\r",
            "        // If the destination directory doesn't exist, create it.\r",
            "        if (!Directory.Exists(destDirName))\r",
            "        {\r",
            "            Directory.CreateDirectory(destDirName);\r",
            "        }\r",
            "\r",
            "        // Get the files in the directory and copy them to the new location.\r",
            "        FileInfo[] files = dir.GetFiles();\r",
            "        foreach (FileInfo file in files)\r",
            "        {\r",
            "            string temppath = Path.Combine(destDirName, file.Name);\r",
            "            file.CopyTo(temppath, false);\r",
            "        }\r",
            "\r",
            "        // If copying subdirectories, copy them and their contents to new location.\r",
            "        if (copySubDirs)\r",
            "        {\r",
            "            foreach (DirectoryInfo subdir in dirs)\r",
            "            {\r",
            "string temppath = Path.Combine(destDirName, subdir.Name);\r",
            "DirectoryCopy(subdir.FullName, temppath, copySubDirs);\r",
            "            }\r",
            "\r",
            "        }\r",
            "\r",
            "        Console.WriteLine(\"Files copied.\");\r",
            "\r",
            "    }\r",
            "}    "
        ],
        "description": "copy.files"
    }            
        
```


made with Easy Snippet from:


```

using System;
using System.IO;

class DirectoryCopyExample
{
    static void Main()
    {
        string destinationFolder = @"{1:DestinationFolder}";
        
        Directory.CreateDirectory(destinationFolder);

        if (Directory.Exists(destinationFolder)) {
            Directory.Delete(destinationFolder, true);
        }

        Directory.CreateDirectory(destinationFolder);

        DirectoryCopy(@"{2:SourceFolder}",destinationFolder, true);
    }

    private static void DirectoryCopy(string sourceDirName, string destDirName, bool copySubDirs)
    {
        // Get the subdirectories for the specified directory.
        DirectoryInfo dir = new DirectoryInfo(sourceDirName);

        Console.WriteLine("Start copying...");

        if (!dir.Exists)
        {
            throw new DirectoryNotFoundException(
"Source directory does not exist or could not be found: "
+ sourceDirName);
        }

        DirectoryInfo[] dirs = dir.GetDirectories();
        // If the destination directory doesn't exist, create it.
        if (!Directory.Exists(destDirName))
        {
            Directory.CreateDirectory(destDirName);
        }

        // Get the files in the directory and copy them to the new location.
        FileInfo[] files = dir.GetFiles();
        foreach (FileInfo file in files)
        {
            string temppath = Path.Combine(destDirName, file.Name);
            file.CopyTo(temppath, false);
        }

        // If copying subdirectories, copy them and their contents to new location.
        if (copySubDirs)
        {
            foreach (DirectoryInfo subdir in dirs)
            {
string temppath = Path.Combine(destDirName, subdir.Name);
DirectoryCopy(subdir.FullName, temppath, copySubDirs);
            }

        }

        Console.WriteLine("Files copied.");

    }
}
        
```


