Red [
    Title: "systray-notification.red"
    .links: [
        https://superuser.com/questions/1230448/how-to-send-the-image-in-clipboard-into-figure-bed-just-by-powershell/1252247
    ]    
]

Article: [

    Title: {systray notification}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/powershell/winform/systray-notification.red](https://github.com/lepinekong/mycodesnippets/blob/master/powershell/winform/systray-notification.red)
        }
        .Published-Url: http://mycodesnippets.space/powershell/winform/systray-notification
    ]  


    demo: [
        .title: {Demo}
        .text: {Type in [red-lang](https://www.red-lang.org/p/download.html) console: }
        .quote: {do read http://mycodesnippets.space/powershell/winform/src/systray-notification.red}
        .image: https://i.imgur.com/SDplZ96.png
    ]      
    
    code-snippet: [

        .title: {Code Snippet}
        .links: [
            {View source} https://github.com/lepinekong/mycodesnippets/blob/master/powershell/winform/src/systray-notification.ps1
            {Copy source} https://raw.githubusercontent.com/lepinekong/mycodesnippets/master/powershell/winform/src/systray-notification.ps1
        ]        
        .code/powershell: {
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
$objNotifyIcon = New-Object System.Windows.Forms.NotifyIcon 
$objNotifyIcon.Icon = [System.Drawing.SystemIcons]::Warning
$objNotifyIcon.BalloonTipIcon = "Error" 
$objNotifyIcon.BalloonTipText = 'No image on the clipboard' 
$objNotifyIcon.BalloonTipTitle = "File Not Found"
$objNotifyIcon.Visible = $True 
$objNotifyIcon.ShowBalloonTip(10000)
        }

    ]
]

do https://readable.red
markdown-gen 