Red [
    Title: "random.red"
]

random/seed now/time

dice1: random 6 
dice2: random 6
?? dice1 ?? dice2 ; ex. dice1: 2 dice2: 1

;or
do https://redlang.red/range
dices: range/dices 1 6 2
?? dices ; [2 1]

fibonacci-dice1: first random [1 2 4 8 16 32]
fibonacci-dice2: first random [1 2 4 8 16 32]
;or
fibonacci-dices: reduce [first random [1 2 4 8 16 32] first random [1 2 4 8 16 32]]

?? fibonacci-dice1; fibonacci-dice1: 8
?? fibonacci-dice2; fibonacci-dice2: 2
?? fibonacci-dices; fibonacci-dices: [4 16]

