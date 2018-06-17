Red [
    Title: "on-deep-change.red"
    Description: {
        An object can own series it references, even nested ones. When an owned series is changed, the owner object is notified and its on-deep-change* function will be called if available, allowing the object to react appropriately to any change.        
    }
    References: [
        http://red.reb4.me/news/2016/03/060-red-gui-system
    ]
]

numbers: object [

    list: []

    on-deep-change*: function [owner word target action new index part][
        if all [word = 'list find [poke insert] action][
            forall target [
                unless integer' target/1 [
                    print ["Error: Item" mold target/1 "is invalid!"]
                    remove target
                    target: back target
                ]
            ]
            sort list
        ]
    ]
]

