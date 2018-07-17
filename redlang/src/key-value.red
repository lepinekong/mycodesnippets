Red [
    Title: "key-value.red"
]

kv: [ a: 1 b: 2 c: 3]

;same code if 
;kv: [ a 1 b 2 c 3]

print {
    Instead of:
    v: select kv 'b (' means literal value instead of b evaluation)
    You can also use:
    v: kv/b ; 2
}

;-------------------------------------
v: kv/b ; same as: select kv 'b
;-------------------------------------
?? v ; -> v: 2

print {
    If your key is stored in a variable k:
    k: 'b
    Instead of select kv k, you can use:
    v: kv/(k)
    ?? v    
}

;-------------------------------------
k: 'b
v: kv/(k) ; same as: select kv k      
;-------------------------------------
?? v ; -> v: 2

