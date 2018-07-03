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
            "Get Bitcoin price at interval from Json REST Service" %./bitcoin
            "Hash 256" %./hash
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
            "Reduce / Insert idiom" %./reduce.insert            
            "Collect / Keep idiom" %./collect
        ]        
    ]     

    GUI: [
        .title: {GUI}
        .links: [
            "image flip" %./image-flip
            "GUI Panels" %./gui-panels
            "Barchart" %./barchart
            "Data Binding" %./databinding
            "Draw colored boxes" %./draw/box
            "Vid text positioning" %./vid/positioning
            "Draw Shape" %./draw/shape
            "Draw Sinusoid" %./draw/sinusoid
        ]
    ]

    Utilities: [
        .title: {general utility functions}
        .links: [
            "Console prompt" %./console-prompt   
            "Console type detection" %./console-detection   
            "Run Python command" %./python/run-python-command
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

    OOP: [
        .title: {OOP}
        .links: [
            "OOP" %./oop
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

]

do read http://readablehumanformat.com/lib.red
markdown-gen