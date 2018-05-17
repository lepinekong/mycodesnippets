Red [
    Title: "index.red"
]

Article: [

    Title: {Index of MyCodeSnippets.Space}

    Bootstrap: [
        .title: {Bootstrap}
        .links: [
            "Code Snippets for Bootstrap" %./bootstrap/
        ]
    ]    

    Html: [
        .title: {Html}
        .links: [
            "Code Snippets for Html" %./html/
        ]
    ]

    Jekyll: [
        .title: {Jekyll}
        .links: [
            "Code Snippets for Jekyll" %./jekyll/
        ]      
    ]

    ReAdABLE: [
        .title: {ReAdABLE}
        .links: [
            "Some usefull VSCode snippets for ReAdABLE Human Format" %./readable/
        ]
    ] 

    Redlang: [
        .title: {Redlang}
        .links: [
            "Some usefull Redlang snippets" %./redlang/
        ]    
    ]     

    VSCode: [
        .title: {VSCode}
        .links: [
            "A samples of general VSCode Snippets" %./vscode/
        ]       
    ]       
]

do read http://readablehumanformat.com/lib.red
markdown-gen
