Red [
    Title: "codesnippet.build.red"
]

do http://redlang.red/templating

render %res/codesnippet.template.red

if exists? %../index.red [
    category: ask "Index category:"
    
]
