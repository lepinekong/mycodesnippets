Red [
    Title: "link.red"
]

Article: [

    Title: {link}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/markdown/link.red](https://github.com/lepinekong/mycodesnippets/blob/master/markdown/link.red)
        }
        .Published-Url: http://mycodesnippets.space/markdown/link
    ]    
    
    link: [

        .title: {Paste this snippet in General User.Snippets (don’t forget the “,” separator):}
        .code: {
            "markdown-link": {
                "prefix": "markdown-link",
                "body": [
                    "[${1:title}](${2:link})"
                ],
                "description": "markdown-link"
            }
        }
        .title: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
            [{1:title}]({2:link})            
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 