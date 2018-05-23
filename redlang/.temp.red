Red [
    Title: ""
]

sentence: {Parcoursup est la plateforme numérique, support de la procédure nationale de préinscription pour l’accès aux formations initiale du premier cycle de l’enseignement supérieur. Cette plateforme permet aux lycéens, apprentis ou étudiants en réorientation qui souhaitent entrer dans l’enseignement supérieur de formuler leurs vœux de poursuite d’études et de répondre aux propositions d’admission des établissements dispensant des formations du premier cycle de l’enseignement supérieur (Licences, STS, IUT, CPGE, écoles d’ingénieurs, etc...). }

non-keywords: ["." "l'" "d'" "le" "ou" "aux" "la" "les" "du" "de" "des" "cette" "et" "se" "(" ")" "," ]

foreach non-keyword non-keywords [
    rule: compose/deep [any [
        to (non-keyword) begin-mark: thru (non-keyword) end-mark:
        (change/part change/part begin-mark "" end-mark)
    ]]
    ?? rule
    ;parse sentence rule 
]

