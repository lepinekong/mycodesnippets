Red [
    Title: ""
    .links; [
        http://www.rebol.org/documentation.r?script=oneliner-prime-factors.r
    ]
]

f: func[n][
	m: 2 w: :append a: copy [] 
	until [
		either n // m = 0 [n: n / m w a m][m: m + 1]
		if m ** 2 > n [w a n n: 1] n = 1
	]
	a
]
