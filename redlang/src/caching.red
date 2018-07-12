Red [
    Title: "caching.red"
]

logos: [google twitter facebook youtube winword excel powerpoint onenote]

images: make block! 8
forall logos [
    url: rejoin [https://miniapps.red/images/ logos/1 "_128.png"]
    append images load-thru url
]
