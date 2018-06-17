Red [
    Title: ""
    References: [
        https://www.red-lang.org/search/label/GUI
    ]
]

view [
    style chk: check "Option" data yes
    style vline: base 2x60 red
    across top    vline button "Ok" text "Text" field chk return
    across middle vline button "Ok" text "Text" field chk return
    across bottom vline button "Ok" text "Text" field chk
]