Red [
    Title: ""
]

view [
    panel 600x400 [
        base "Drag me!" 160x30 loose
            on-drag-start [face/extra: face/offset/y]
            on-drag [
                if face/offset/y <> face/extra [
                    ; setting offset here causes drag stalling
                    face/offset/y: face/extra
                ]
            ]
            on-drop [face/offset/y: face/extra]
    ]
]