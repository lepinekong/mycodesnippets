# https://stackoverflow.com/questions/7967699/get-screen-resolution-using-wmi-powershell-in-windows-7

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.SystemInformation]::PrimaryMonitorSize | select-object Width,Height
