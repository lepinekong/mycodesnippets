Red [
    Title: "reactor.red"
	References: [
		http://red.reb4.me/news/2016/06/061-reactive-programming
	]
]

reactor: make reactor! [
	a: 1
	b: 2
	c: 3
]

view [

	Title {Reactor demo}

	fa: field react [face/data: to-string reactor/a]
	fb: field react [face/data: if not none? fa/data [to-string ((to-float fa/data) * 2)]]
	fc: field react [face/data: if not none? fa/data [to-string ((to-float fa/data) * 3)]]
	
	do [
		fa/data: reactor/a
		fb/data: reactor/b
		fc/data: reactor/c
	]

	button "Change a to 10 in Reactor" [
		reactor/a: 10
	]
]
