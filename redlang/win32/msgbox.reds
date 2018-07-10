Red/System [
    Bookmarks: [
        https://gitter.im/red/help?at=5a8c221e8f1c77ef3a2fe0e8
    ]
]

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

