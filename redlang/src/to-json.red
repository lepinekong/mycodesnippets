Red [
    Title: "to-json.red"
]

Youtube: [
    [
        id: {ov00SrBwjKQ}
        title: {The City of London, the Corporation that runs it}
        description: {A secret state within a state, with deleterious effects on democracy, politics and economics in London, the country, and the world, for the City is joint headquarters with Wall Street of global finance capital. In short, 'Secret City' isn't just a film for Londoners - especially in these times of crisis, the role of the City concerns everyone everywhere.}
    ]
    [
        id: {4XNMCTBdQtk}
        title: {Will the Earths Magnetic Fields Shift?}
        description: {Is the Earth losing its magnetic field and doomed to a fate similar to Mars? Many scientists believe the answer lies in paleomagnetic data, and that this weakening may be a precursor to a magnetic field reversal.}
    ]
    [
        id: {eHnwtkfX2k4}
        title: {The City of London, the Corporation that runs it}
        description: {A secret state within a state, with deleterious effects on democracy, politics and economics in London, the country, and the world, for the City is joint headquarters with Wall Street of global finance capital. In short, 'Secret City' isn't just a film for Londoners - especially in these times of crisis, the role of the City concerns everyone everywhere.}
    ]
]

do https://redlang.red/to-json
json-data: to-json youtube
write-clipboard json-data
print json-data


