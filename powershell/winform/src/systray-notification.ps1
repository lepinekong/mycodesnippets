[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
$objNotifyIcon = New-Object System.Windows.Forms.NotifyIcon 
$objNotifyIcon.Icon = [System.Drawing.SystemIcons]::Warning
$objNotifyIcon.BalloonTipIcon = "Error" 
$objNotifyIcon.BalloonTipText = 'No image on the clipboard' 
$objNotifyIcon.BalloonTipTitle = "File Not Found"
$objNotifyIcon.Visible = $True 
$objNotifyIcon.ShowBalloonTip(10000)