Red [
    Title: "google.chart.red"
	Build: 1.0.0.2
]

Article: [

    Title: {google.chart}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/google.chart.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/google.chart.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/google.chart
    ]    
    
    google.chart: [

        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {

        }
        .title: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
            
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 

;=====================================================================
; IMPLEMENTATION
;=====================================================================

Red [
    Title: "google-piecharts.red"
    Build: 1.0.0.2
]

do read http://redlang.red/googlecharts.red

.google-pie-chart:  function[.data [block! string!  word! unset!] /title .title /local ][
	switch/default type?/word get/any '.data [
		unset! [
            ; default data for demo purpose
			.data: [
				"Adsense Revenue" 300
				"Sponsors" 500
				"Gifts" 50
				"Others" 58
			]
			.google-pie-chart .data
		]
		block! string! word! [

			either title [
				if block? .title [
					old-data: .data
					.data: copy .title
					.title: form old-data
				]				
				..google-pie-chart/title .data .title
			][
				..google-pie-chart .data
			]
			
		]
	] [
		throw error 'script 'expect-arg .data
	]
]

.pie-chart: :.google-pie-chart
google-pie-chart: :.google-pie-chart
pie-chart: :.pie-chart

..google-pie-chart: function[.data /title .title][

	; https://developers.google.com/chart/image/docs/gallery/pie_charts

	comment: {
		;usage example:
		pie-chart [
			"Adsense Revenue" 300
			"Sponsors" 500
			"Gifts" 50
			"Others" 58
		]	
	}

    if not title [
		.title: "pie chart"
	]

	image: chart compose [
		title: (.title)
		size: 650x300
		type: 'pie

		labels: extract .data 2
		data: extract/index .data 2 2

		sum: 0
		forall data [sum: sum + data/1: to-integer data/1]
		forall data [change data round 100 * data/1 / sum]
		
		forall labels [
			labels/1: rejoin [labels/1 " " data/(index? labels) "%"]
		]
	]

	?? image
	view win: reduce [
		'title .title
		'image image
	]
	
]

;=====================================================================
; TESTING
;=====================================================================

.data: [
    "Adsense Revenue" 300
    "Sponsors" 500
    "Gifts" 50
    "Others" 58
]
;.google-pie-chart/title .data "Test Revenu"
.google-pie-chart/title "Test Revenu" .data 