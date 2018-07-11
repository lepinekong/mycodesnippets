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
            "set reduce" %./set
            "as-pair shortcut for make pair! reduce" %./as-pair                       
            "collect / keep idiom" %./collect
            "reduce / insert idiom" %./reduce.insert 
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
            "Draw Rectangle corners" %./draw/rectangle-corners
            "Shape Rotation" %./draw/shape-rotation
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

]

do read http://readablehumanformat.com/lib.red
markdown-gen