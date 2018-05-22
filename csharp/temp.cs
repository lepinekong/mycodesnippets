{
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