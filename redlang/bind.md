
# bind example(s)


### Definition of bind

according to rebol help:
>bind binds words to a specified context:
words -- A block of words or single word. (Type: block any-word)
known-word -- A reference to the target context. (Type: any-word object port)


bind function seems like a deep mystery and she is actually, so we'll enrich this page with growing examples.

### Example 1: partially override an object at runtime

Suppose you want to change just one line of code in a library written by somebody else but you don't want to create a new version of the library
![https://i.imgur.com/zynS9zv.png](https://i.imgur.com/zynS9zv.png)
                    
you can use this code snippet:
![https://i.imgur.com/dd2RlT8.png](https://i.imgur.com/dd2RlT8.png)
                    


```redlang

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
        
```


