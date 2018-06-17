Red [
    Title: "listbox.red"
    References: [
        https://www.red-lang.org/search/label/GUI
    ]
]

view [
    text-list data parse
        read https://api.github.com/repos/red/red/events
        [collect [any [thru "message" 3 skip keep to ["\n" | {"}]]]]
]