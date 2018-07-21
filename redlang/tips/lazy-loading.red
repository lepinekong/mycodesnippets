Red [
    Title: "lazy-loading.red"
]

Article: [

    Title: {lazy-loading}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/tips/lazy-loading.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/tips/lazy-loading.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/tips/lazy-loading
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do http://mycodesnippets.space/redlang/tips/src/lazy-loading.red}
        .text: {then type:}
        .quote: {Powershell Profile}
        .image: https://i.imgur.com/TkM0TH6.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .image: https://i.imgur.com/rpquHjL.png
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/redlang/tips/src/lazy-loading.red
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/tips/src/lazy-loading.red
        ]        
        .code/redcode: {
Red [
    Title: "lazy-loading.red"
]

lazy-load: function ['>function][

    {Usage:
        lazy-load powershell-profile
        lazy-load 'powershell-profile        
    }    

	.function: form >function

	switch .function [		
		"powershell-profile" [
			load-powershell-profile ; will load powershell-profile function if not already loaded
			powershell-profile ; will call powershell function
		]	
	]
]

load-powershell-profile: function [][
	unless value? 'powershell-profile [
		do https://redlang.red/powershell/powershell-profile.red
        print "Loading powershell-profile"
		return true
	]
    print "Powershell-profile already exists."
	return false
]

system/lexer/pre-load: func [src part][
    parse src [
        any [
            s: [
                ["powershell-profile^/" | "powershell-profile" end] (new: "lazy-load powershell-profile")
				| ["powershell profile^/" | "powershell profile" end] (new: "lazy-load powershell-profile")
            ] e: (s: change/part s new e) :s
            | skip
        ]
    ]
]

; for testing in red console: 
; powershell-profile 
; or
; powershell profile

; for testing in script:
; do {powershell-profile}
; or
;do {powershell profile}

        }

    ]
]

do https://readable.red
markdown-gen 