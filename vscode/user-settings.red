Red [
    Title: "user-settings.red"
]

Article: [

    Title: {vscode user settings}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/vscode/user-settings.red](https://github.com/lepinekong/mycodesnippets/blob/master/vscode/user-settings.red)
        }
        .Published-Url: http://mycodesnippets.space/vscode/user-settings
    ]  
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/vscode/src/user-settings.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/vscode/src/user-settings.red
        ]        
        .code/json: {
{
    "textmarker.defaultHighlightColor": "darkmagenta",
    "textmarker.highlightColors": [
        "darkmagenta"
    ],    
    "python.pythonPath": "c:/python36/python.exe",
    
    "workbench.iconTheme": "material-icon-theme",
    "vsicons.dontShowNewVersionMessage": true,
    "explorer.confirmDragAndDrop": false,
    "editor.tabCompletion": true,
    "terminal.integrated.shell.windows": "cmd.exe",
    "terminal.integrated.shellArgs.windows": [
        "/c", "powershell -noexit -command 'Set-location \"%CD%\"';cls"
    ],
    // Start VSCode Settings for Red
    "red.redPath": "C:\\rebol\\red.exe",
    "files.associations": {
        "*.read": "red",        
        "*.readable": "red",        
    },    
    // End VSCode Settings for Red

    "shellLauncher.shells.windows": [
        {
            "shell": "C:\\Windows\\SysWOW64\\cmd.exe",
            "label": "cmd"
        },
        {
            "shell": "C:\\Windows\\SysWOW64\\WindowsPowerShell\\v1.0\\powershell.exe",
            "label": "PowerShell"
        },
        {
            "shell": "C:\\Program Files\\Git\\bin\\bash.exe",
            "label": "Git bash"
        },
        {
            "shell": "C:\\Windows\\System32\\bash.exe",
            "label": "WSL Bash"
        }
    ],    
    "startanyshell.shells": [
        {
            "description": "Windows Command Prompt",
            "command": "start \"%description%\" /WAIT %comspec%"
        },
        {
            "description": "Git Bash 2",
            "command": "\"C:\\Program Files\\Git\\git-bash.exe\" \"--cd=%path%\""
        },
        {
            "description": "Windows Powershell",
            "command": "start \"%description%\" powershell.exe -noexit"
        },
        {
            "description": "Developer Command Prompt for VS2015",
            "command": "start \"%description%\" /WAIT \"%HOMEDRIVE%\\Program Files (x86)\\Microsoft Visual Studio 14.0\\Common7\\Tools\\VsDevCmd.bat\""
        },
        {
            "description": "Cmder",
            "command": "cmder.exe /start \"%path%\""
        }
        ,
        // Start VSCode Settings for Red
        {
            "description": "RedCli",
            "command": "start/wait /D \"%path%\" c:\\rebol\\red.exe --cli"
        } 
        // End VSCode Settings for Red     
    ],
    // Start VSCode Settings for Markdown Checkbox
    "markdown-checkbox.typeOfBulletPoint": "-",
    "markdown-checkbox.dateWhenChecked": true,
    // References: https://marketplace.visualstudio.com/items?itemName=PKief.markdown-checkbox
    // End VSCode Settings for Markdown Checkbox

    "pasteImage.path": "./images/",

    "explorer.confirmDelete": false,
    "editor.accessibilitySupport": "off",
    "editor.matchBrackets": false,

    "subtleBrackets.styles": {
        "global": {
            "borderWidth": "1px",
            "borderStyle": "none none solid none"
        },
        "[]": { 
            "color": "white",
            "backgroundColor": "blue",
            "borderStyle": "none"
        }
    },
    "copyOnSelect.copyOnKeyboardSelection": true,

    "indentRainbow.colors": [

        "rgba(40,40,40,0.2)",
        "rgba(30,30,30,0.2)",
        "rgba(20,20,20,0.2)",
        "rgba(10,10,10,0.2)",
        "rgba(0,0,0,0.2)"
      ],
    "gitlens.advanced.messages": {
        "suppressCommitHasNoPreviousCommitWarning": false,
        "suppressCommitNotFoundWarning": false,
        "suppressFileNotUnderSourceControlWarning": false,
        "suppressGitVersionWarning": false,
        "suppressLineUncommittedWarning": false,
        "suppressNoRepositoryWarning": false,
        "suppressResultsExplorerNotice": false,
        "suppressShowKeyBindingsNotice": true
    },
    "material-icon-theme.folders.color": "#007cb6",
    "cSpell.language": "en",
    "cSpell.enabledLanguageIds": [
        "asciidoc",
        "c",
        "cpp",
        "csharp",
        "css",
        "go",
        "handlebars",
        "html",
        "jade",
        "javascript",
        "javascriptreact",
        "json",
        "latex",
        "less",
        "markdown",
        "php",
        "plaintext",
        "pub",
        "python",
        "red",
        "restructuredtext",
        "rust",
        "scss",
        "text",
        "typescript",
        "typescriptreact",
        "yml"
    ],
    "cSpell.userWords": [
        "",
        "aberkane",
        "accomplissant",
        "adable",
        "adsense",
        "affiche",
        "allowfullscreen",
        "altjson",
        "angularjs",
        "annuel",
        "apifuncs",
        "apps",
        "arc",
        "arial",
        "as",
        "autoload",
        "autoplay",
        "baisse",
        "barchart",
        "base",
        "belle",
        "bien",
        "block",
        "blockchain",
        "boiteux",
        "bug",
        "builder",
        "chartmage",
        "cheatsheet",
        "cheatsheets",
        "code",
        "codeburst",
        "codegen",
        "codeops",
        "codesnippet",
        "codesnippets",
        "colonnes",
        "com",
        "commandline",
        "config",
        "connaît",
        "cortana",
        "courrier",
        "couverture",
        "create",
        "crossorigin",
        "crypto",
        "cryptocurrencies",
        "cryptocurrency",
        "création",
        "currency",
        "d'un",
        "dans",
        "databinding",
        "datas",
        "dataviz",
        "datetime",
        "demofolder",
        "destin",
        "devkit",
        "diable",
        "dialogbox",
        "dieu",
        "dirigée",
        "dp",
        "dropdown",
        "d’aragon",
        "espace",
        "eval",
        "exefolder",
        "exeurl",
        "fantasque",
        "filenamewithoutextension",
        "filepath",
        "financed",
        "flexbox",
        "flickr",
        "folder",
        "font",
        "forall",
        "frameborder",
        "fullscreen",
        "function",
        "garantee",
        "get",
        "git",
        "githublib",
        "gitlab",
        "glyphicon",
        "googlecharts",
        "guid",
        "hash",
        "hline",
        "howtogeek",
        "hwnd",
        "idriss",
        "if",
        "iframe",
        "iife",
        "img",
        "imgs",
        "imgur",
        "interop",
        "io",
        "iphone",
        "jotnotes",
        "jpg",
        "jquery",
        "jsonp",
        "jupyter",
        "ligne",
        "lignes",
        "list",
        "listbox",
        "lucida",
        "légende",
        "lépine",
        "l’histoire",
        "l’ont",
        "mainwindow",
        "mais",
        "membre",
        "menu",
        "merde",
        "metatrader",
        "miniapp",
        "miniapps",
        "mkdir",
        "mobaxterm",
        "mobirise",
        "moins",
        "mois",
        "msgbox",
        "mycodesnippets",
        "myitissues",
        "mymementos",
        "mère",
        "médian",
        "napoléon",
        "nenad",
        "net",
        "new",
        "nginx",
        "ntabs",
        "oauth",
        "object",
        "oneliner",
        "onenote",
        "opensource",
        "organisation",
        "oubliée",
        "packtpub",
        "parentfolder",
        "personnage",
        "phpinfo",
        "png",
        "poloniex",
        "pomodoro",
        "pourtant",
        "powerpoint",
        "powershell",
        "prestations",
        "prin",
        "providentielle",
        "précédé",
        "quickrun",
        "re",
        "rebol",
        "rect",
        "red",
        "redlang",
        "referer",
        "repo",
        "resource",
        "retrouve",
        "retvalue",
        "revenu",
        "revenus",
        "ruby",
        "runtime",
        "régimes",
        "sapi",
        "sb",
        "sce",
        "selon",
        "services",
        "showinfo",
        "signifie",
        "snapchat",
        "sociales",
        "soie",
        "sourire",
        "sp",
        "space",
        "speech",
        "splitted",
        "stdcall",
        "stringbuilder",
        "stylesheet",
        "subgraph",
        "succèderont",
        "sysdo",
        "system",
        "tablette",
        "talks",
        "tant",
        "template",
        "templating",
        "text",
        "threadhold",
        "title",
        "titres",
        "token",
        "tomsitpro",
        "toomas",
        "tostring",
        "totest",
        "toutes",
        "tradingworld",
        "troubleshootings",
        "trust",
        "tweetpic",
        "twython",
        "udacity",
        "uint",
        "unview",
        "url",
        "usefull",
        "user",
        "utilisé",
        "variables",
        "verdana",
        "videos",
        "visualstudio",
        "vline",
        "voice",
        "volonté",
        "vooglaid",
        "vrais",
        "vscode",
        "walkthrough",
        "wallstreet",
        "warriors",
        "webcli",
        "webdesign",
        "window",
        "winword",
        "xaml",
        "xmlns",
        "yolande",
        "yourfolder",
        "yourimage",
        "youtube"
    ],
    "window.zoomLevel": 0,
    "[red]": {
        
    },
    "git.enableSmartCommit": true,
    "gitlens.historyExplorer.enabled": true,
    "terminal.integrated.rendererType": "dom",
    "editor.minimap.enabled": false
}
        }

    ]
]

do https://readable.red
markdown-gen 