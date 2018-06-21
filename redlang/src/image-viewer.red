Red [
    Title: "image-viewer.red"
]

win: compose/deep [
    title "Image Viewer"
    image (load to-red-file "C:\rebol\.system\test\test-new.png")
]

view layout win