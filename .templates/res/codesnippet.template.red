Red [
    Title: "<%short-filename%>.red"
]

Article: [

    Title: {<%codesnippet-title%>}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/<%full-path%>/<%short-filename%>.red](https://github.com/lepinekong/mycodesnippets/blob/master/<%full-path%>/<%short-filename%>.red)
        }
        .Published-Url: http://mycodesnippets.space/<%full-path%>/<%short-filename%>
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/<%full-path%>/src/<%short-filename%>.red}
        .image: 
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: 
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/<%full-path%>/src/<%short-filename%>.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/<%full-path%>/src/<%short-filename%>.red
        ]        
        .code/<%language%>: {

        }

    ]
]

do https://readable.red
markdown-gen 