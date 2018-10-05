Red [
    Title: "redlang"
]

Article: [

    Title: {Index of redlang code snippets}

    Data: [
        .title: {Data processing}
        .links: [
            "Parse text CSV data (from excel,...)" %./parse-text-data
            "CRUD CSV" %./crud-csv
            "to-json" %./to-json
            "Get Bitcoin price at interval from Json REST Service" %./bitcoin
            "Hash 256" %./hash
            "Random (ex. 2 dices)" %./random
        ]
    ]


    GUI: [
        .title: {GUI}
        .links: [
            "image flip" %./image-flip
            "GUI Panels" %./gui-panels
            "Data Binding" %./databinding
            "Draw colored boxes" %./draw/box
            "Vid text positioning" %./vid/positioning
            "Draw Shape" %./draw/shape
            "Draw Rectangle corners" %./draw/rectangle-corners
            "Shape Rotation" %./draw/shape-rotation
            "Save image" %./vid/save-image
        ]
    ]

    Datavisualization: [
        .title: {Data Vizualisation}
        .links: [
            "Barchart" %./barchart  
            "Draw Sinusoid" %./draw/sinusoid              
            "Data Visualization" %./draw/dataviz
            "Donut" %./draw/donut
        ]

    ]

    Web: [
        .title: {Web}
        .links: [
            {Embed in html} %./embed-in-html
        ]
    ]

    Types: [
        .title: {Types}
        .links: [
            {Linux time} %./datetime/linux-time
        ]
    ]

    Functions: [
        .title: {Functions}
        .links: [
            "creating operator" %./operator
            "dynamic call (code generation)" %./codegen/dynamic-call
        ]        
    ] 

    Idioms: [
        .title: {Red idioms}
        .links: [
            "Select Key-Value Pair" %./key-value 
            "set reduce" %./set
            "append reduce or repend" %./repend
            "as-pair shortcut for make pair! reduce" %./as-pair                       
            "collect / keep idiom" %./collect
            "reduce / insert idiom" %./reduce.insert 
            "bind" %./bind
        ]        
    ]     

    Utilities: [
        .title: {general utility functions}
        .links: [
            "Console prompt" %./console-prompt   
            "Console type detection" %./console-detection   
            "Run Python command" %./python/run-python-command
            "Get environment variable (Edit Powershell Profile)" %./get-env
        ]
    ]     

    Code-Utilities: [
        .title: {Code utility functions}
        .links: [
            "autoload" %./autoload
            "use function" %./use            
            "do-trace" %./do-trace
            "Code split" %./code.split
            "Code Analyze" %./code.analyze            
        ]

    ]       

    Code-Structure: [
        .title: {Code Structure}
        .links: [
            "OOP" %./oop
            "include" %./include
        ]        
    ]

    Code-Generation: [
        .title: {Code generation}
        .links: [
            "Reduce Insert idiom" %./reduce.insert
            "Powershell Installer Generator" %./powershell.installer.generator
        ]        
    ]

    Pre-processor: [
        .title: {Pre-processor}
        .links: [
            "Basics" %./preprocessor/basics
            "Code Red in French!" %./preprocessor/red-in-french
        ] 
    ]

    Parse: [
        .title: {Parse}
        .links: [
            {Natural Language Processing for Command Line} %./parse/nlp-command
        ]
    ]

    Tips: [
        .title: {Tips}
        .links: [
            {Lazy loading} %./tips/lazy-loading
        ]
    ]

    Win32: [
        .title: {Win32}
        .links: [
            "Powershell Win32" %./win32/powershell-win32
        ]
    ]

]

do https://readable.red
markdown-gen