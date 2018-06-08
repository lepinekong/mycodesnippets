
# powershell.installer.generator


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/powershell.installer.generator.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/powershell.installer.generator.red)


### Powershell Installer Generator (example):



```red

Red [
    File: "ReAdABLE.HumanFormat.deploy.red"
    Title: "Powershell Deployment script generator"
    Source-Url: https://gist.github.com/lepinekong/b59fa3e8d386dea1ebaa1a096488c542
    Description: {This script will generate ReAdABLE.HumanFormat.deploy.ps1 
    the Zero Install Oneliner Powershell Script}

    History: [
        v1.0.0: {Initial Version}
        v1.0.1: {Refactoring}
        v1.0.2: {Making Batch resilient to folder name change}
    ]

    Flowchart: [
        Preamble: [
            flag-remote? [
Yes: [load-remote-library]
No: [exist-local-library? [
        Yes: load-local-library
        No: load-remote-library
    ]
]
            ]
        ]

        Main: [
            check-file-name-in-header -> OK? [
Yes: []
No: [update-file-name-in-header]
            ]
        ]
    ]

    Links: [

        Powershell: [
            https://mcpmag.com/articles/2013/01/22/pshell-invoke-webrequest.aspx
            https://www.jaapbrasser.com/quicktip-select-all-links-using-invoke-webrequest/
        ]

        DOS: [

            https://blogs.msdn.microsoft.com/zainala/2008/08/05/using-0-inside-the-batch-file-to-get-the-file-info/
            https://htipe.wordpress.com/2008/10/09/the-dp0-variable/
            [difference between ~dp0 and cd to find the current directory](https://www.computerhope.com/forum/index.php?topic=54333.0)
            
            http://www.robvanderwoude.com/battech_defined.php

        ]
    ]    
]

;===========================================================================================
; PREAMBLE
;===========================================================================================

; loading library 
REMOTE-LIB: false

unless ((REMOTE-LIB = false) and (exists? lib: %../.libraries/.system.user.apps.authoring.library.red)) [
    print "Loading remote lib"
    either exists? %../.libraries/.github.lib.red [
        print "Executing %../.libraries/.github.lib.red"
        do %../.libraries/.github.lib.red
    ][
        do read https://gist.githubusercontent.com/lepinekong/7574892bfefe7e53e7bd4dd4759f30f8/raw/2dec6c1f92fe1834632d998ffb831539caa23d63/.github.lib.red
    ]
    github-url-entry: https://gist.github.com/lepinekong/7574892bfefe7e53e7bd4dd4759f30f8
    lib: get-github-url github-url-entry %.system.user.apps.authoring.library.red 
]
lib-src: read lib
if url? lib [
    print ["updating local lib .system.user.apps.authoring.library.red see log.txt"]
    write %../.libraries/.system.user.apps.authoring.library.red lib-src
    write %../.libraries/log.txt rejoin ["library-date: " now]
]
do lib-src

if file? lib [
    if exists? lib [
        do read %../.libraries/log.txt
        library-date
        diff-date: difference now library-date 
        if (diff-date/hour > (24 * 7)) [
            print "Checking remote lib"
            do read https://gist.githubusercontent.com/lepinekong/7574892bfefe7e53e7bd4dd4759f30f8/raw/2dec6c1f92fe1834632d998ffb831539caa23d63/.github.lib.red
            github-url-entry: https://gist.github.com/lepinekong/7574892bfefe7e53e7bd4dd4759f30f8
            remote-lib-url: get-github-url github-url-entry %.system.user.apps.authoring.library.red
            remote-lib: read remote-lib-url
            local-SHA256: checksum lib 'SHA256
            remote-SHA256: checksum remote-lib 'SHA256
            either (remote-SHA256 = local-SHA256)[][
ans = ask "Remote lib has been update: do you want to update? (Y/N, N by default): "
if (ans = "Y") [
    write lib remote-lib
    do read %lib
]
            ]
        ]
        
    ]
]

;self script path
script-path: system/options/script ; example: %/c/rebol/.system.user/.data/.activities/myArticles/HOOD/ReAdable.Format/deploy/ReAdABLE.HumanFormat.deploy.red
script-filename: .get-short-filename script-path
short-filename: .get-short-filename/wo-extension script-path

check-filename: function[][

    src: read script-path
    Description: rejoin [{This script will generate } short-filename {.ps1 
    the Zero Install Oneliner Powershell Script}]
    parse src [
        thru {File: "} mark1: 
        to {"} mark2:
        (change/part mark1 script-filename mark2)

        thru "Description: {" mark1: 
        to "}" mark2:
        (change/part mark1 Description mark2)        
    ]
    ;write-clipboard src
    write script-path src
]

get-script-header: function[][
    self-script: Redlang.get-program/header script-path
    loaded-header: load self-script
    return make object! loaded-header/2
]

DEBUG_ONELINER: false

debug-oneliner: function[][

    {Will split ps1 source code generated line by line and copy to clipboard}

    file: .to-file [short-filename ".ps1"]

    do-trace 155 [probe file] script-path

    src: read file
    block: split src ";"
    out: copy ""
    forall block [
        element: trim/head/tail block/1
        unless (element = "") [
            append out element
            unless (tail? next next block) [append out newline]
            back back block
        ]
    ]    
    write-clipboard out
]

if DEBUG_ONELINER = true [
    debug-oneliner
    print "DEBUG_ONELINER=true => exit; set it back to false."
]

;===========================================================================================
; DATA
;===========================================================================================

template: [
    source: {
        $demo="<%short-filename%>"
        $github='<%Source-Url%>'
        $githublib='https://gist.github.com/lepinekong/7574892bfefe7e53e7bd4dd4759f30f8'
        $demofolder="C:\red\demos\$demo"
        $exefolder="C:\red"
        $exeurl='https://static.red-lang.org/dl/win/red-063.exe'
        Add-Type -AssemblyName Microsoft.VisualBasic
        $demofolder=[Microsoft.VisualBasic.Interaction]::InputBox("Enter folder for $demo demo:", $demo, $demofolder)
        if ($demofolder -ne $null) {$demo=Split-Path $demofolder -Leaf
        Function Get-Github-Links {Param($uri)
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $WebResponse = Invoke-WebRequest -Uri "$uri"
        return $ResponseLinks=$WebResponse.Links | Select href}
        Function Filter-Link {Param($filter)
        $links = $AllLinks | Where-Object {$_.href -match "$filter"}
        $link=$links[0].href
        return $link}
        Function Get-Github-Url {Param($filename)
        $link=Filter-Link $filename        
        $url="https://gist.githubusercontent.com$link"
        return $url}
        $AllLinks = Get-Github-Links $github 
        $src=Get-Github-Url 'ReAdABLE.Human.Format.red'
        New-Item -ItemType Directory -Force -Path $red-folder
        New-Item -ItemType Directory -Force -Path $demofolder
        $Webcli=New-Object System.Net.WebClient
        if (!(Test-Path `"$exefolder\red.exe`")) {$Webcli.DownloadFile("$exeurl","$exefolder\red.exe")}
        "Red [] `n print to-local-file what-dir `n do read $src" | Out-File -filepath "$demofolder\$demo.red" -Encoding "UTF8"
        "cd `"%~dp0`"`r`n" | Out-File -filepath "$demofolder\$demo.bat" -Encoding ASCII
        "IF DEFINED RED_HOME (start `"%~n0`" `"%RED_HOME%\red.exe`" `"%~n0.red`" %1) ELSE (start `"%~n0`" `"$exefolder\red.exe`" `"%~n0.red`" %1)" | Out-File -filepath "$demofolder\$demo.bat" -Encoding ASCII -Append
        cmd.exe /c "$demofolder\$demo.bat"
        Add-Type -AssemblyName PresentationFramework
        $msgBox=[System.Windows.MessageBox]::Show('Would  you like to download the source?','Download','YesNo','Question')
        switch ($msgBox) {'Yes' {New-Item -ItemType Directory -Force -Path "$demofolder\deploy"
        $Webcli.DownloadFile($src,"$demofolder\$demo.red") 
        $link=Get-Github-Url ".ReAdABLE.HumanFormat.deploy.ps1" 
        $Webcli.DownloadFile($link,"$demofolder\deploy\$demo.deploy.ps1")
        $link=Get-Github-Url "ReAdABLE.HumanFormat.deploy.red" 
        $Webcli.DownloadFile($link,"$demofolder\deploy\$demo.deploy.red")} 'No' {}} 
        $AllLinks = Get-Github-Links $githublib
        $link=Get-Github-Url '.system.user.apps.authoring.library.red' 
        New-Item -ItemType Directory -Force -Path "$demofolder\.libraries"
        $Webcli.DownloadFile($link,"$demofolder\.libraries\.system.user.apps.authoring.library.red")     
        start explorer.exe -ArgumentList "/select, `"$demofolder\$demo.red`""}
    }
]

;===========================================================================================
; PROGRAM
;===========================================================================================

; self-script: Redlang.get-program/header script-path
; loaded-header: load self-script
; header: make object! loaded-header/2

script-header: get-script-header
Source-Url: script-header/Source-Url ; Github url for source

check-filename

src: .select template 'source

src: .expand src [
    short-filename: (short-filename)
    Source-Url: (Source-Url)
]

out: copy ""
block: .read/lines src
forall block [
    element: trim/head/tail block/1
    unless (element = "") [
        append out element
        unless (tail? next next block) [append out ";"]
        back back block
    ]
]

ps1-file: rejoin [short-filename ".ps1"]
write ps1-file out
print [ps1-file "has been generated."]

;===========================================================================================
; DOC GENERATION
;===========================================================================================

flowchart: script-header/flowchart
write-clipboard mold flowchart


        
```


