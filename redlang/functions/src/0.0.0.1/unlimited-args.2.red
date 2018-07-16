Red [
    Title: "unlimited-args.red"
    Builds: [
        0.0.0.2: {Example: Alexa}
        0.0.0.1: {initial version}
    ]
]

n: 10 ; number of max words

; --- function args ---

func-args: copy []

args-types: [any-type! unset!]

repeat i n  [
    append func-args (to-lit-word (rejoin ["arg" i]))
    append/only func-args args-types
]
; --------------------

; --- function body ---

func-body: copy[]

append func-body load {    args: copy []}

func-body-template: {
        if not (equal? 'unset! type?/word get/any 'arg<%i%>)
        [   
            append args arg<%i%>
        ]
} 

repeat i n  [
    append func-body load replace/all copy func-body-template
    {<%i%>} i
]
append func-body [probe args]

; --------------------


Alexa: function func-args func-body

Alexa repeat after me!
