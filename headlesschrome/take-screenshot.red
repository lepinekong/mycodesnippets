Red [
    Title: "take-screenshot.red"
]

Article: [

    Title: {Take Screenshot with Headless Chrome}
    Sub-Title: {What to do if --screenshot doesn't work ?}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/headlesschrome/take-screenshot.red](https://github.com/lepinekong/mycodesnippets/blob/master/headlesschrome/take-screenshot.red)
        }
        .Published-Url: http://mycodesnippets.space/headlesschrome/take-screenshot
    ]    
    
    take-screenshot: [

        .title: {In command line type for example:}
        .code: {
            chrome --headless --disable-gpu --screenshot="C:\test\screen.png" "http://mycodesnippets.space/"
        }
        .note: {Don't forget to specify a path or it may not work.}
        .text: {to specify size use --window-size=width,height:}
        .code: {
            chrome --headless --disable-gpu --screenshot="C:\test\screen.png" --window-size=1280,1696 "http://mycodesnippets.space/"
        }
        .image: https://i.imgur.com/GKVgUSR.png
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 