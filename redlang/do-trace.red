Red [
    Title: "do-trace.red"
]

Article: [

    Title: {do-trace}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/do-trace.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/do-trace.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/do-trace
    ]    
    
    do-trace: [

        .title: {Source Code:}
        .code: {
.do-trace: function [.line-number [integer!] '.block [word! block! unset!] .file [file! url! string!]
/filter that-contains [string! file! url!]
][

    file: form .file
    if filter [
            either not find file that-contains [exit][
        ]
    ]

    switch type?/word get/any '.block [
        unset! [
            print {TODO:}
        ]
        block! [

            .do-events/no-wait
            print  [file "line" .line-number ": "]
            .do-events/no-wait
            do :.block
            ask "pause..."
        ]
    ]

]

do-trace: :.do-trace

; dependencies

.do-events: function [
    
	{Launch the event loop, blocks until all windows are closed} 
	/no-wait "Process an event in the queue and returns at once" 
	return: [logic! word!] "Returned value from last event" 
	/local result 
	win
][
    try [
        either no-wait [
            do-events/no-wait
        ][
            do-events
        ]
    ]
] 
        }
        .title: {VSCode Snippet}
        .code: {
"do-trace": {
    "prefix": "do-trace",
    "body": [
        "do read http://redlang.red/do-trace\r",        
        "do-trace ${TM_LINE_NUMBER:default} [\r",
        "    ;print \"line ${TM_LINE_NUMBER:default}\"\r",
        "    ?? ${1:var-to-trace}\r",
        "] %${TM_FILENAME:default}"
    ],
    "description": "do-trace"
}            
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 

test: "test"
do read http://redlang.red/do-trace
do-trace 88 [
    ?? test
] %do-trace.red