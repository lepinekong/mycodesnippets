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



