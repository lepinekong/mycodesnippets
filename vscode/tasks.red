Red [
    Title: "tasks.red"
]

Article: [

    Title: {vscode tasks}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/vscode/tasks.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode/tasks.red)
        }
        .Published-Url: http://mycodesnippets.space/vscode/tasks
    ]    
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/KFQS9xB.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/vscode/src/tasks.json
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/vscode/src/tasks.json
        ]        
        .code/json: {
{
    // See https://go.microsoft.com/fwlink/?LinkId=733558
    // for the documentation about the tasks.json format
    "version": "2.0.0",
    "tasks": [
        {
            "label": "templating",
            "type": "shell",
            "command": "${workspaceFolder}\\.github\\.templates\\run.bat"
        }
    ]
}

        }

    ]
]

do https://readable.red
markdown-gen 