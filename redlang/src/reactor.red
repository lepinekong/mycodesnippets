Red [
    Title: "reactor.red"
]

reactor: make reactor! [
	a: 1
	b: 2
	c: 3
]

view [
	fa: field react [face/data: to-string reactor/a]
	fb: field react [face/data: if not none? fa/data [to-string ((to-float fa/data))]]
	fc: field react [face/data: if not none? fa/data [to-string ((to-float fa/data))]]
	
	do [
		fa/data: reactor/a
		fb/data: reactor/b
		fc/data: reactor/c
	]
]
