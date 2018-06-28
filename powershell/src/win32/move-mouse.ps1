<#
    .links: [
        https://stackoverflow.com/questions/15835941/powershell-mouse-move-does-not-prevent-idle-mode
    ]
#>

Add-Type -AssemblyName System.Windows.Forms 

$position = [System.Windows.Forms.Cursor]::Position  
$position.X = $position.X + 200

[System.Windows.Forms.Cursor]::Position = $position 