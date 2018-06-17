Red [
    Title: "dynamic-tabs.red"
]

detail-tab: first layout/only [panel [text "hello"]]

toggle-detail: function [state [logic!]][
    either state [
        insert at tabs/data 2 "Detail"
        insert at tabs/pane 2 detail-tab
    ][
        remove at tabs/data 2
        remove at tabs/pane 2
    ]
]

view [
    tabs: tab-panel [
        "General" [check "Detail" [toggle-detail face/data]]
        "Tags"    []
    ]
]