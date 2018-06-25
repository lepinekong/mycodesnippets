


Red [
    Title: "dynamic-call.red"
]

show-message: function [/refine msg /popup][

    if not refine [
        msg: "Hello"
        ?? msg
    ]

    either popup [
        view compose [
            text (msg)
        ]
    ][
        print msg
    ]
]

popup: function [msg][
    command: reduce [load "show-message/popup/refine"]
    append command to-word 'msg
    probe command ; [show-message/popup/refine msg]

    ;do [show-message/popup/refine msg] 
    do command ; same as above
]

popup "test"