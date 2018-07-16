Red [
    Title: "to-json.red"
]

Article: [

    Title: {to-json}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/to-json.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/to-json.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/to-json
    ]  

    credit: [
        .title: {Credit}
        .text: {Thanks to [Christopher Ross-Gill](http://ross-gill.com/) for his great [Altjson](https://github.com/rgchris/Scripts/blob/master/red/altjson.red) library}
    ]


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/redlang/src/to-json.red}
        .image: https://i.imgur.com/C9rifx9.png
    ]      
    
    usage-code-snippet: [

        .title: {Usage Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/to-json.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/src/to-json.red
        ]        
        .code/redcode: {
Red [
    Title: "to-json.red"
]

Youtube: [
    [
        id: {ov00SrBwjKQ}
        title: {What Darwin Never Knew}
        description: {The source of life's endless forms was a profound mystery until Charles Darwin's revolutionary idea of natural selection.
        NOVA reveals answers to the riddles that Darwin couldn't explain.}
    ]
    [
        id: {4XNMCTBdQtk}
        title: {Will the Earths Magnetic Fields Shift?}
        description: {Is the Earth losing its magnetic field and doomed to a fate similar to Mars? Many scientists believe the answer lies in paleomagnetic data, and that this weakening may be a precursor to a magnetic field reversal.}
    ]
    [
        id: {eHnwtkfX2k4}
        title: {The City of London, the Corporation that runs it}
        description: {A secret state within a state, with deleterious effects on democracy, politics and economics in London, the country, and the world, for the City is joint headquarters with Wall Street of global finance capital. 
        In short, 'Secret City' isn't just a film for Londoners - especially in these times of crisis, the role of the City concerns everyone everywhere.}
    ]
]

do https://redlang.red/to-json
json-data: to-json/no-newline youtube ; no-newline allows to join lines (ignore newline)
        }

    ]

    lib-code-snippet: [
        .title: {to-json library}
        .links: [
            {View source} https://github.com/lepinekong/redlang.red/blob/master/to-json.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/redlang.red/master/to-json.red
        ]         
        .code/redcode: {
Red [
    Title: "to-json.red"
    Based-on: [
        Library: "Altjson"
        Author: "Christopher Ross-Gill"
    ]

]

do https://redlang.red/altjson

.to-json: :to-json ; for overriding to-json

to-json: function[
    >block [block! word!]
    /compact /no-clipboard-output 
    /no-tab-replace /no-newline
][

    if no-newline [
        .block: copy []
        forall >block [
            sub-block: >block/1
            new-sub-block: copy []
            foreach [field value] sub-block [
                value: replace/all value newline " "
                append new-sub-block reduce [field value]
            ]
            append/only .block new-sub-block
        ] 
        >block: copy .block       
    ]

    ;--- tab replace feature ---

        either no-tab-replace [
            .block: >block
        ][
            .block: copy []
            forall >block [
                sub-block: >block/1
                new-sub-block: copy []
                foreach [field value] sub-block [
                    value: replace/all value tab ""
                    value: replace/all value "    " ""
                    append new-sub-block reduce [field value]
                ]
                append/only .block new-sub-block
            ]
        ]

    ;---------------------------

    ;--- json conversion feature ---
    either compact [
        json-data: .to-json .block
    ][
        json-data: .to-json/pretty .block
    ]
    ;---------------------------

    ;--- clipboard feature ---

    unless no-clipboard-output [
        to-clipboard: function [>data][
            write-clipboard >data
            print ["output written to clipboard:"]
            print >data
        ]        
        to-clipboard json-data
    ]
    ;--------------------------

    return json-data
    
]

        }
    ]
]

do https://readable.red
markdown-gen 