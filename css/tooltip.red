Red [
    Title: "tootip.red"
]

Article: [

    Title: {CSS tooltip}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/css/tootip.red](https://github.com/lepinekong/mycodesnippets/blob/master/css/tootip.red)
        }
        .Published-Url: http://mycodesnippets.space/css/tootip
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/css/src/tootip.red}
        .links: [
            https://www.youtube.com/watch?v=gKCfUUC_LiA
        ]
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: 
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/css/src/tootip.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/css/src/tootip.red
        ]        
        .code/css: {
p{
    margin: 30% 20%;
}

span{
    font-weight: bold;
    font-size: 1.2em;
    cursor: help;
    position: relative;
}

span::before{
    content: attr(data-tooltip);
    position: absolute;
    background: rgba(0,0,0,.7);
    padding: 1em 2em;
    color: #fff;
    border-radius: 7px;
    bottom: 120%;
    right: -50px;
    white-space: nowrap;
    transform: scale(0);
}

span:hover::before{
    transform:scale(1);
}

span::after{
    content: "";
    border-top: 7px solid rgba(0,0,0,.7);
    border-left: 7px solid transparent;
    border-right: 7px  solid transparent;
    position: absolute;
    left: 50%;
    bottom: 85%;
    opacity: 0;
}

span:hover::after{
    opacity: 1;
}

        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 