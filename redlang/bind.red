Red [
    Title: "bind.red"
]

Article: [
    Title: {bind example(s)}

    Introduction: [
        .title: {Definition of bind}
        .text: {according to rebol help:}
        .quote: {bind binds words to a specified context:
            words -- A block of words or single word. (Type: block any-word)
            known-word -- A reference to the target context. (Type: any-word object port)
        }
        .text: {bind function seems like a deep mystery and she is actually, so we'll enrich this page with growing examples.}
    ]
    Example: [
        .title: {Example 1: partially override an object at runtime}
        .text: {Suppose you want to change just one line of code in a library written by somebody else but you don't want to create a new version of the library}
        .image: https://i.imgur.com/zynS9zv.png
        .text: {you can use this code snippet:}
        .image: https://i.imgur.com/dd2RlT8.png
        .code/redlang: {
        do https://redlang.red/altjson.red

        bind json-loader/object-name: [
		string space #":" space (
			emit either is-flat [
				to set-word! current-value ; this is the modified line of code
			][
				any [
					to-word current-value
					current-value
				]
			]
		    )
	    ]  json-loader
        }
    ]
]

do http://readable.red
markdown-gen


