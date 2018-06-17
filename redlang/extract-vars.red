Red [
    Title: "extract-vars.red"
]

.get-vars: function[>template][
    vars: copy []
    rules: [any [thru "<%" copy var to "%>" (append vars var)]]
    parse >template rules
    return unique vars
]

.extract-vars: :.get-vars
extract-vars: :.get-vars