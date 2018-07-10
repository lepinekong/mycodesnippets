Red [
    Title: "msgbox.red"
    .links: [
        https://gitter.im/red/help?at=5a8c221e8f1c77ef3a2fe0e8
        http://red.qyz.cz/red-system-from-red.html
        https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messagebox
    ]
]

dialogbox: routine [][
    #import [
        "user32.dll" stdcall [
            msgbox: "MessageBoxA" [
                hwnd [integer!]
                text [c-string!]
                caption [c-string!]
                type [integer!]
                return: [byte!]
            ]
        ]
    ] 

    msgbox 0 "Hello" "Welcome" 0  
]

dialogbox