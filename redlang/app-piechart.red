Red [
    Title: "app-piechart.red"
]

Article: [

    Title: {app-piechart}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/app-piechart.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/app-piechart.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/app-piechart
    ]    
    
    app-piechart: [

        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {

        }
        .title: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
            
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 

;=====================================================================
; IMPLEMENTATION
;=====================================================================


Red [
    Title: "piechart.red"
    Build: 1.0.0.0
]

do read http://redlang.red/google-piecharts.red
do read http://redlang.red/parse-text-data.red

piechart:  function ['.data [word! block! unset! string!] /title .title /clipboard ][

    switch/default type?/word get/any '.data [

        data: none ; to initialize

        unset! [
            
            either clipboard [

                data: parse-text-data read-clipboard
                .google-pie-chart data                

            ][
                print {HELP - Command examples:

                - piechart ; for help
                - piechart [label1 10 "label 2" 20] ; for one line data block
                - piechart [ ; for multiple lines data block
                    label1 10 
                    "label 2" 20
                ]
                - piechart/title [Salary 5000 Financials 1000] "My Revenues"
                - piechart/title "My Revenues" [Salary 5000 Financials 1000]
                - piechart/clipboard ; for reading block of data from clipboard without bracket
                - For passing data variable, embed variable with () for example:
                    .data: [label1 10 "label 2" 20]
                    piechart (.data)  
                }

                ans: ask "Do you want to process from clipboard ? (Y/N - N by default): "
                if ans = "Y" [
                    piechart/clipboard
                ]
            ]

        ]
        block! string! word! [

            either title [
                .google-pie-chart/title .data .title
            ][
                .google-pie-chart .data
            ]
            
        ]
    ] [

        print {
            For passing data variable, embed variable with () for example:
            .data: [
                "Adsense Revenue" 300
                "Sponsors" 500
                "Gifts" 50
                "Others" 58
            ]
            piechart (.data)            
        }
    ]
]


if not value? '.system [
    print {
Command examples:

- piechart ; for help
- piechart [label1 10 "label 2" 20] ; for one line data block
- piechart [ ; for multiple lines data block
    label1 10 
    "label 2" 20
]
- piechart/title [Salary 5000 Financials 1000] "My Revenues"
- piechart/title "My Revenues" [Salary 5000 Financials 1000]
- piechart/clipboard ; for string of data from clipboard without bracket
- For passing data variable, embed variable with () for example:
    .data: [label1 10 "label 2" 20]
    piechart (.data)  
    }
]

;=====================================================================
; TESTING
;=====================================================================


piechart/title [Salary 5000 Financials 1000] "My Revenues"

; piechart [
;     "Adsense Revenue" 300
;     "Sponsors" 500
;     "Gifts" 50
;     "Others" 58
; ] 

