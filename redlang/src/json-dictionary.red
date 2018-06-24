Red [
    Title: "json-dictionary.red"
    References: [
        https://boostlog.io/@faisalnad/creating-an-english-dictionary-application-in-python-5aff6da547018500491f48b8
    ]
]

do read https://redlang.red/altjson.red

dictionary: load-json/flat read %db/collection.json
write-clipboard mold dictionary

; returns
probe [
    <abandoned industrial site> [
        {Site that cannot be used for any purpose, being contaminated by pollutants.}
    ] 
    <abandoned vehicle> [
        {A vehicle that has been discarded in the environment, urban or otherwise, often found wrecked, destroyed, damaged or with a major component part stolen or missing.}
    ] 
    <abiotic factor> [
        {Physical, chemical and other non-living environmental factor.}
    ] 
    <access road> [
        {Any street or narrow stretch of paved surface that leads to a specific destination, such as a main highway.}
    ] 
    <access to the sea> [
        {The ability to bring goods to and from a port that is able to harbor sea faring vessels.}
    ] 
    <accident> [
        {An unexpected, unfortunate mishap, failure or loss with the potential for harming human life, property or the environment.} 
        {An event that happens suddenly or by chance without an apparent cause.}
    ]
]
