Red [
    Title: "call-google-chrome.red"
]

chrome-path: rejoin [{"} get-env "programfiles(x86)" "\Google\Chrome\Application\chrome.exe" {"}]
image-file: {"C:\test\test.png"}
url: http://mybookmarks.space/

command: rejoin [chrome-path { } url { }  {--screenshot=} image-file { } {--headless --disable-gpu}]
call command
