Red [
    Title: "hash.red"
    Version: 0.0.0.1
    Builds: [
        0.0.0.1.3 {Fixed area does not update}
    ]
]




calc-hash-list-of-strings: function [>list-strings [block! string! word!] 
    /method-hash >method [word!]['SHA256 'MD5 'CRC32 'SHA1 'SHA384 'SHA512 'TCP 'hash]][

    unless block? >list-strings [
        >list-strings: form >list-strings ; 'hello -> "hello"
        >list-strings: append copy [] >list-strings ; put it in a block: needed for rejoin doesn't allow string
    ]

    string-to-hash: rejoin >list-strings

    unless method-hash [
        >method: 'SHA256
    ]

    hash>: checksum string-to-hash >method 
    ; #{
    ;     95FE4554327582704CA796BCB8C33F8F4D23057EBBA8335129248B3D011E143A
    ; }
    parse mold hash> [thru "#{^/" copy hash> to "^/}" ] ; "95FE4554327582704CA796BCB8C33F8F4D23057EBBA8335129248B3D011E143A"
    return hash>
]

hash: :calc-hash-list-of-strings ; hash is a clone of calc-hash-list-of-strings

title: {SHA 256 (hash method used in Bitcoin, Blockchain,...)}
view compose [

    Title (title)

    text "Block #" txt-index-0: field center "0" return
    text "timestamp:" fld-timestamp-0: field right (to-string to-integer now) return
    text "Data:" fld-data-0: area wrap {Genesis Block} return
    text "prevHash:" fld-prevHash-0: field silver "0" 450x24 return
    text "nonce:" fld-nonce-0: field right "" return
    text "hash:" fld-hash-0: area silver react [
        face/data: hash [txt-index-0/text fld-prevHash-0/text fld-timestamp-0/text fld-data-0/text fld-nonce-0/text]
    ]  
]
