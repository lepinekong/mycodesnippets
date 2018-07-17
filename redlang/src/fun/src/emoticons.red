Red [
    Title: "Emoticons.red"
	Needs-Library: [%unicode.red]
    Library-Author: "Toomas Vooglaid"
	Original-Gist: https://gist.github.com/toomasv/e819fa2452f38a15cea6e20182ab9309
]

sysdo: :do
do: function [lib][
	try [sysdo lib] ; to avoid error in toomasv/unicode.red with do %range.red
]

do https://redlang.red/toomasv/range.red
do https://redlang.red/toomasv/unicode.red


emoticons: unicode 'emoticons ; 
weather: unicode 'weather
?? emoticons ; show block of emoticons in console
?? weather



