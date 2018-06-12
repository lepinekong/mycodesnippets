Red [
    Title: "crud-csv.red"
]

Article: [

    Title: {crud CSV}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/crud-csv.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/crud-csv.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/crud-csv
    ]    
    
    crud-csv: [

        .title: {Source Code}
        .links: [
            "Github url" https://github.com/lepinekong/mycodesnippets/blob/master/redlang/src/crud-csv.red
        ]
        .image: https://i.imgur.com/vr1ZhAG.png        
        .code: {
Red [
    Title: "crud-csv.red"
]

do read http://redlang.red/do-trace


if not exists? data-file: %db/inventory.csv [
    make-dir %db
    write data-file read http://mycodesnippets.space/redlang/src/db/inventory.csv
    print rejoin ["Created " clean-path data-file]
]

read-csv: function[data-file][

    if not exists? data-file [
        print rejoin [data-file " doesn't exist."]
        return false
    ]

    lines: skip Read/lines data-file 1 ; skip first csv header line 
    records: copy []

    forall lines [
        append/only records split lines/1 ","
    ]
    return records
]


save-csv: function[records data-file][
    write/lines file-path lines
]

add-csv: function[records record][
    {
        Example:
        add-csv {05/07/2018,05/07/2020,Tablette Windows 10,Microsoft - SURFACE PRO I5 256GB,1,1376.55€,DARTY LES HALLES 907037 / 9543295,to repair}
    }
    if not block? record [
        record: split record ","
    ]

    append/only records record
    return records
]

records: read-csv %db/inventory.csv
?? records

records: add-csv records {05/07/2018,05/07/2020,Tablette Windows 10,Microsoft - SURFACE PRO I7 256GB,1,1376.55€,DARTY LES HALLES 907037 / 9543295,to repair}

do-trace 53 [
    ?? records
] %crud-csv.red

search-csv: function[records searched-value][

    {
        records-numbers: search-csv records "SURFACE PRO I7 256GB"
    }
    records-numbers: copy []

    forall records [
        record: records/1 
        i: index? records

        forall record [
            field-value: record/1
            if not none? find field-value searched-value [
                append records-numbers i
                break
            ]
        ]
    ]
    
    return records-numbers
]

records-numbers: search-csv records "SURFACE PRO I7 256GB"

do-trace 82 [
    ?? records-numbers
] %crud-csv.red


delete-csv: function[records record-number-or-search-string][

    record-number: record-number-or-search-string

    if string? record-number-or-search-string [
        records-numbers: search-csv records record-number-or-search-string
        record-number: records-numbers/1
    ]

    if (record-number > 1) [
        repeat i (record-number - 1) [
            records: next records
        ]
    ]

    do-trace 102 [
        record: records/1
        ?? record
    ] %crud-csv.red
    
    remove records
    records: head records

    return records
]

records: delete-csv records "SURFACE PRO I7 256GB"

do-trace 115 [
    ?? records
] %crud-csv.red



        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 
