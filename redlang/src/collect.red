Red [
    Title: "collect.red"
]

print {
Instead of:
block: copy []
repeat i 16 [append block i]
}

block: copy []
repeat i 16 [append block i] ; == [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]
?? block

print {
you can use collect with keep:
collect [repeat i 16 [keep i]]
}

;you can use collect with keep:
block: collect [repeat i 16 [keep i]] ; == [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]
?? block

