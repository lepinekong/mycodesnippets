Red [title: "Menus" needs: 'view]
g: layout [area 400x400]
g/menu: [
    "No Submenus" [
        "Print" prnt
        ---
        "Quit" kwit
    ]
    "Sub-menus" [
        "Sub-menus" [
            "Submenu1" s1
            "Submenu2" s2
            "Submenu3" [
                "Submenu4" s4
            ]
        ]
    ]
]
g/actors: make object! [
    on-menu: func [face [object!] event [event!]][
        if event/picked = 'kwit [unview/all]
        if event/picked = 'prnt [print "print menu selected"]
        if event/picked = 's4 [print "submenu4 selected"]
    ]
]
view g