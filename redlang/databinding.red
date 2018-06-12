Red [
    Title: "databinding.red"
]

Article: [

    Title: {data binding}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/redlang/databinding.red](https://github.com/lepinekong/mycodesnippets/blob/master/redlang/databinding.red)
        }
        .Published-Url: http://mycodesnippets.space/redlang/databinding
    ]    
    
    data-binding: [

        .title: {Data binding csv file}
        .text: {for demo type in red console:}
        .code: {
do read http://mycodesnippets.red/redlang/src/inventory.red            
        }
        .image: https://i.imgur.com/AQ2tNw4.png
        .text: {CSV file example: }
        .image: https://i.imgur.com/C1nyVBj.png
        .text: {Source code:}
        .image: https://i.imgur.com/tATBCUy.png
        .code: {
Red [
    Title: "inventory.red"
]

if not exists? data-file: %db/inventory.csv [
    make-dir %db
    write data-file read http://mycodesnippets.red/redlang/inventory.csv
    print rejoin ["Created " clean-path data-file]
]

lines: skip Read/lines data-file 1
records: copy []

forall lines [
    append/only records split lines/1 ","
]

n: (to-string length? records)

;using red reactive programming
;reactor allows to define the current record
;"is" is called reactive relation.
record: make reactor! [

    row: 1

    Entry-Date: is [ records/(row)/1]
    End-Garantee: is [ records/(row)/2]
    type: is [ records/(row)/3]
    description: is [ records/(row)/4]
    Quantity: is [ records/(row)/5]
    Price: is [ records/(row)/6]
    Reference: is [ records/(row)/7]
    Note: is [ records/(row)/8]

]

header: [
        panel [
        ;text "Description:" field 250x24 data records/1/3
        ;data-binding using react keyword
        text "Description:" field 250x24 react [face/data: record/description]
        return
        text "Type:" field 250x24 react [face/data: record/type]
        return        
    ]

    panel [
        text "Entry Date:" field react [face/data: record/entry-date]
        return
        text "End Garantee:" field react [face/data: record/end-garantee]       
    ]  
]

body-left: [

        text "Quantity / Price"
        return

        text "quantity:" field react [face/data: record/quantity]
        return
    
        text "price:" field react [face/data: record/price]
        return    
]

body-right: [

        text "Complements"
        return

        text "Reference:" field 250x24 react [face/data: record/reference]
        return

        text "Note:" field 250x24 react [face/data: record/note]
        return        
]

footer: [

    across middle
    button "previous" [
        either (record/row = 1) [
            record/row: length? records
        ][
            record/row: record/row - 1
        ]
    ]

    text 10x15 react [face/data: record/row] 

    button "next" [
        either (record/row < length? records) [
            record/row: record/row + 1
        ][
            record/row: 1
        ]
    ]
    
]

Title: "Inventory"

win: layout compose [

    title (Title)

    panel header 

    return 

    panel body-left 
    panel body-right

    return

    panel footer
    
]

view win


        }

    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 