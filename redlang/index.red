Red [
    Title: "redlang"
]

Article: [

    Title: {Index of redlang code snippets}

    utilities: [
        .title: {general utility functions}
        .links: [
            "use function" %./use
            "do-trace" %./do-trace
        ]

    ]

    Parse-Datas: [
        .title: {Parse datas}
        .links: [
            "Parse text data (from excel,...)" %./parse-text-data
        ]
    ]

    Functions: [
        .title: {Functions}
        .links: [
            "creating operator" %./operator
        ]        
    ] 

    GUI: [
        .title: {GUI}
        .links: [
            "GUI Panels" %./gui-panels
            "Barchart" %./barchart
        ]
    ]

    Code-Operations: [
        .title: {Code Operations}
        .links: [
            "code.split" %./code.split
        ]
    ]

    Code-Analyzer: [
        .title: {Code Analyzer}
        .links: [
            "Code Analyze" %./code.analyze
        ]        
    ]     

    Code-Generation: [
        .title: {Code generation}
        .links: [
            "Reduce Insert idiom" %./reduce.insert
            "Powershell Installer Generator" %./powershell.installer.generator
        ]        
    ]        

]

do read http://readablehumanformat.com/lib.red
markdown-gen