Red [
    Title: "flowchart.red"
]

print "in flowchart.red: do %lib/shapes.red"
print clean-path %libs/shapes.red
do %libs/shapes.red

f: function[][
    g
]

g: function [][
    print "in function g"
    do %libs/shapes.red
]

f