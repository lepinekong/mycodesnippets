
# autoload script for red


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/autoload.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/autoload.red)


### Purpose

allows to autoload a script user.red if it exists.

### red.bat

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/autoload/red.bat)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/autoload/red.bat)
                        


```bash

if exist "%~dp0autoload.red" (
	echo "autoload.red"
    start "%~n0" "%~dp0red.exe" "%~dp0autoload.red" %CD% %1
) else (
    start "%~n0" "%~dp0red.exe" %CD% %1
)
        
```



### autoload.red

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/autoload/autoload.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/autoload/autoload.red)
                        


```red

Red [
    title: "autoload.red"
]

;==============================================================================================================================
options-args: system/options/args ; block of command line arguments
current-dir: to-red-file options-args/1

options-script: system/options/script ; launched script path
;==============================================================================================================================
system-folder: first split-path system/options/script
user-script: rejoin [system-folder %user.red]

.load: function[][

    if find options-script %autoload.red [
        autoload-script: options-script
        print rejoin ["executed autoload: %" autoload-script]
    ] 
    lib: to-red-file "C:\rebol\.system.user\.code\.domains\.apps\Authoring\libraries\.system.user.apps.authoring.library.red"

    remote-lib: https://gist.githubusercontent.com/lepinekong/7574892bfefe7e53e7bd4dd4759f30f8/raw/4c9bef8dd30d7115e1b6eb208afb7d4090522683/.system.user.apps.authoring.library.red

    either (options-args/1 = "remote") [
        do read remote-lib
    ][
        either exists? lib [
            do read lib
            print rejoin ["executed lib: %" lib]
            
        ][
            ;TODO: download lib
        ]
    ]

    either exists? user-script [
        do read user-script
        print rejoin ["executed user: %" user-script]
    ][
        print ["you can create user.red for autoloading your own startup script in" system-folder]
    ]

]
.reload: :.load
.load
;==============================================================================================================================
change-dir current-dir
print to-local-file what-dir

        
```



### user.red

- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/autoload/user.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/autoload/user.red)
                        


```bash

Red []

system/console/prompt: does [

        now-time: now/time
        either ((now-time > 12:00) and (now-time < 14:00)) [
        rejoin [now-time " Lunch Time!!! >> "]
    ][
        rejoin [now-time " >> "]
    ]
]
        
```


