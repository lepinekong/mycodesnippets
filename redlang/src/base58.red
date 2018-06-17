; Warning: works only for small strings (like "Hello") because of lack of BigInteger support currently 
; Download Red-lang.org and copy and paste the code, see execution sample at the bottom

base58-alphabet: ["1" "2" "3" "4" "5" "6" "7" "8" "9" "A" "B" "C" "D" "E" "F" "G" "H" "J" "K" "L" "M" "N" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"]

to-base58: func[string][
    base: 58
    i: 0
    n: length? string
    set 'cum 0
    remainders: copy []
    base58: copy [] 
    
    ; for debug
    dividends: copy []
    exponents: copy []
    codedecimals: copy []

    foreach char string [
        i: i + 1
        decimal: to-integer char
        exponent: ((n - i) * 8)
        append exponents exponent
        codedecimal: (decimal * (power 2 exponent))
        append codedecimals codedecimal
        cum: cum + codedecimal
    ]

    div: to-float cum
    while [div > 0] [
        remainder: mod div 58
        append remainders remainder
        append dividends div
        div: divide (div - remainder) 58
    ]

    reverse remainders

    foreach remainder remainders [
        i: to-integer (remainder + 1)
        append base58 base58-alphabet/:i
    ]

    rejoin base58
    
]


to-base58 "Hell" ; -> 2rLBBR
cum ; -> 1214606444.0
probe remainders ; -> [1 49 19 10 10 24.0]
probe base58 ; -> ["2" "r" "L" "B" "B" "R"]