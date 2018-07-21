Get-Process | 
where-Object {$_.mainWindowTitle} | 
format-table id,name,mainwindowtitle –AutoSize
