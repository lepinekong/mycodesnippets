Red [
    Title: "console-detection.red"
]

title: {Type of Red console detection}

either (system/console = none) [ 
    ; for compiled version (no console)
    view compose [
        title (title)
        text "Compiled Red version"
    ]
][ 
    either system/console/gui? [
        ; for interpreted version with gui console
        view/no-wait compose [
            title (title)
            text "Interpreted Red version with gui console"
        ]
    ][
        ; for interpreted version with non-gui console (vscode)
        view compose [
            title (title)
            text "interpreted version with non-gui console (vscode)"
        ]
    ]

]    