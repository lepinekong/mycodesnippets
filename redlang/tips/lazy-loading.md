
# lazy-loading


### ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)

[http://mycodesnippets.space/redlang/tips/lazy-loading.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/tips/lazy-loading.red)


### Demo

Type in [red-lang](https://www.red-lang.org/p/download.html) console: 
>do http://mycodesnippets.space/redlang/tips/src/lazy-loading.red

then type:
>Powershell Profile

![https://i.imgur.com/TkM0TH6.png](https://i.imgur.com/TkM0TH6.png)
                    

### Code Snippet

![https://i.imgur.com/rpquHjL.png](https://i.imgur.com/rpquHjL.png)
                    
- [View source](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/tips/src/lazy-loading.red)
                        
- [Copy source](https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/redlang/tips/src/lazy-loading.red)
                        


```redcode

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
["powershell-profile
" | "powershell-profile" end] (new: "lazy-load powershell-profile")
				| ["powershell profile
" | "powershell profile" end] (new: "lazy-load powershell-profile")
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

        
```


