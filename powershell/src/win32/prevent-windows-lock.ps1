<#
    .links: [
        https://dmitrysotnikov.wordpress.com/2009/06/29/prevent-desktop-lock-or-screensaver-with-powershell/
    ]
#>
param($minutes = 60)

$myshell = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++) {
    Start-Sleep -Seconds 60
    $myshell.sendkeys(".")
}