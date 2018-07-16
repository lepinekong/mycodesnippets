Red [
    Title: "unlimited-args.red"
]

n: 10

func-args: copy []
func-body: copy[]

args-types: [any-type! unset!]
func-body-template: {
        if not (equal? 'unset! type?/word get/any 'arg<%i%>)
        [   
            append args arg<%i%>
        ]
} 

repeat i n  [
    append func-args (to-lit-word (rejoin ["arg" i]))
    append/only func-args args-types
]

append func-body load {    args: copy []}

repeat i n  [
    append func-body load replace/all copy func-body-template
  {<%i%>} i
]
append func-body [probe args]

&: function func-args func-body