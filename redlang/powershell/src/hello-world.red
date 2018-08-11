Red [
    Title: "hello-world.red"
]

out: copy ""
call/wait/output {powershell -Command "npm install -g jsdoc"} out
print out