Red [
    Title: "run-python-command.red"
]

out: copy "" call/output {C:\Python36\python.exe -c "print('Hello from Python')"} out
?? out