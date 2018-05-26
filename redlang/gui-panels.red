Red [
    Title: "gui.panels.red"
]

Article: [

    Title: {Gui panels}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/gui.panels.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/gui.panels.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/gui.panels
    ] 

    gui.panels: [
        .title: {Code}
        .image: https://i.imgur.com/T8j1jrw.png
        .code: {
portfolio: [
    [SYMBOL QTY [ENTRY-PRICE ENTRY-DATE][EXIT-PRICE EXIT-DATE]]
    ["GOOG" 1000 [1018.07 07/12/2017] [1046.67 13/12/2017]]
    ["AAPL" 100 [175.95 18/12/2017] [177.80 19/12/2017]]
    ["FB" 200 [176.29 04/12/2017] []]
]

portfolio: skip portfolio 1

trade: make reactor! [

    row: 1

    symbol: is [ portfolio/(row)/1]
    quantity: is [portfolio/(row)/2]

    entry-price: is [portfolio/(row)/3/1]
    entry-date: is [portfolio/(row)/3/2]

    exit-price: is [portfolio/(row)/4/1]
    exit-date: is [portfolio/(row)/4/2]
]


show-window: function [window][
    view layout compose window
]

window: [
    group-box [
        panel .header 
    ]
    return 

    group-box [
        panel .body-left 
        panel .body-right
    ]

    return

    group-box [
        panel .footer
    ]
]

.header: [
    
    panel [
        text "stock symbol:" field react [face/data: trade/symbol]
        return
    ]

    panel [
        text "quantity:" field react [face/data: trade/quantity] right
        return
    ]  
]

.body-left: [

        text "Entry"
        return

        text "price:" field react [face/data: trade/entry-price] right
        return
    
        text "date:" field react [face/data: trade/entry-date]
        return    
]

.body-right: [

        text "Exit"
        return

        text "price:" field react [face/data: trade/exit-price] right
        return

        text "date:" field react [face/data: trade/exit-date] right
        return   

]

.footer: [

    across middle
    button "previous" [
        either (trade/row = 1) [
            trade/row: length? portfolio
        ][
            trade/row: trade/row - 1
        ]
    ]

    field react [face/data: trade/row]

    button "next" [
        either (trade/row < length? portfolio) [
            trade/row: trade/row + 1
        ][
            trade/row: 1
        ]
    ]
    
]

 show-window window            
        }
    ]   
]

do read http://readablehumanformat.com/lib.red
markdown-gen 

portfolio: [
    [SYMBOL QTY [ENTRY-PRICE ENTRY-DATE][EXIT-PRICE EXIT-DATE]]
    ["GOOG" 1000 [1018.07 07/12/2017] [1046.67 13/12/2017]]
    ["AAPL" 100 [175.95 18/12/2017] [177.80 19/12/2017]]
    ["FB" 200 [176.29 04/12/2017] []]
]

portfolio: skip portfolio 1

trade: make reactor! [

    row: 1

    symbol: is [ portfolio/(row)/1]
    quantity: is [portfolio/(row)/2]

    entry-price: is [portfolio/(row)/3/1]
    entry-date: is [portfolio/(row)/3/2]

    exit-price: is [portfolio/(row)/4/1]
    exit-date: is [portfolio/(row)/4/2]
]


show-window: function [window][
    view layout compose window
]

window: [
    group-box [
        panel .header 
    ]
    return 

    group-box [
        panel .body-left 
        panel .body-right
    ]

    return

    group-box [
        panel .footer
    ]
]

.header: [
    
    panel [
        text "stock symbol:" field react [face/data: trade/symbol]
        return
    ]

    panel [
        text "quantity:" field react [face/data: trade/quantity] right
        return
    ]  
]

.body-left: [

        text "Entry"
        return

        text "price:" field react [face/data: trade/entry-price] right
        return
    
        text "date:" field react [face/data: trade/entry-date]
        return    
]

.body-right: [

        text "Exit"
        return

        text "price:" field react [face/data: trade/exit-price] right
        return

        text "date:" field react [face/data: trade/exit-date] right
        return   

]

.footer: [

    across middle
    button "previous" [
        either (trade/row = 1) [
            trade/row: length? portfolio
        ][
            trade/row: trade/row - 1
        ]
    ]

    field react [face/data: trade/row]

    button "next" [
        either (trade/row < length? portfolio) [
            trade/row: trade/row + 1
        ][
            trade/row: 1
        ]
    ]
    
]

; show-window window