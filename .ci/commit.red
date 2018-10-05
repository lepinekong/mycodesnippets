Red [
    Title: ""
]

;start config ============================================
>target-path: D:\myprojects\Red\mycodesnippets\.github
;finish config ===========================================

;start preamble ==========================================
if not value? '.redlang [
    do https://redlang.red
]

.redlang [cd log]
.quickrun [git-commit]
;finish preamble =========================================

;start main ==============================================
if not value? '>commit-message [
    >commit-message: ask "commit message: "
]
.log %commit.log (>commit-message)

.cd (>target-path) 

if not exists? (to-red-file form >target-path) [
    print [>target-path "doesn't exist !!!" ]
    quit
]

print what-dir
commit (>commit-message)

;finish main ==============================================
