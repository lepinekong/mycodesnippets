Red [
    title: %sha256.red
]

do read https://redlang.red/sha256

; sha256: function [>exe-path][
;     checksum read/binary (to-red-file >exe-path) 'sha256
; ]

;checksum read/binary to-red-file "C:\ProgramData\Red\console-2017-8-3-49893.exe" 'sha256
r: sha256 "C:\rebol\red.exe"
?? r
; r: #{
; 105d0f7b009a802a35a636c5dbedc69e89477fd62b6ba77690845fd78d436171
; }
r: sha256 "C:\ProgramData\Red\console-2017-8-3-49893.exe"
?? r
; r: #{
; 72FCAC481770B93A9B96232BF503D519317DF63E79D636AB28A06BCC06E9B87A
; }

