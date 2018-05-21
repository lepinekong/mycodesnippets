Red [
    Title: "Reduce.Insert.Idiom.red"
    Status: published
    Category: Code-Generation
]

Tips: [
    Title: "Generate Code Block dynamically (code generation at runtime) with Reduce-Insert idiom"

    Example: [
        .title: {Dynamically generate code}
        .code: {
            [loop 2 [print "hello"]][loop 2 [print "hello"]]
        }
        .text: {steps:}
        .code: {
            -1. generate [[print "Hello"]]
            -2. insert "loop 2" inside [[print "Hello"]] => output: [loop 2 [print "hello"]]
            -3. execute generated code [loop 2 [print "hello"]] 
            => output: {
                Hello 
                Hello
            }
        }

        .code: {
            code: [print "hello"] ; [print "hello"]
            code: reduce [code] ; #1. => output: [[print "Hello"]]
            insert code [loop 2] ; #2. => output: [loop 2 [print "hello"]]    
            do code ; #3. => output: {
            ;     Hello 
            ;     Hello
            ; } 
        }
        
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen










            code: [print "hello"] ; [print "hello"]
            code: reduce [code] ; #1. => output: [print "Hello"]
            insert code [loop 2] ; #2. => output: [loop 2 [print "hello"]]    
            do code ; #3. execute [loop 2 [print "hello"]]  



