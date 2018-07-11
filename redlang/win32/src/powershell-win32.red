Red [
    Title: "powershell-win32.red"
]

set-topmost: function [.hwnd-file /show][ ; uses win32 API

    command: {function Set-TopMost($handle) {$FnDef = '[DllImport("user32.dll")] public static extern bool SetWindowPos(int hWnd, int hAfter, int x, int y, int cx, int cy, uint Flags);';$user32 = Add-Type -MemberDefinition $FnDef -Name 'User32' -Namespace 'Win32' -PassThru;$user32::SetWindowPos($handle, -1, 0,0,0,0, 3)};Add-Type  'using System;using System.Runtime.InteropServices;using System.Text; public class APIFuncs {[DllImport("user32.dll", CharSet = CharSet.Auto, SetLastError = true)]public static extern int GetWindowText(IntPtr hwnd,StringBuilder lpString, int cch);[DllImport("user32.dll", SetLastError=true, CharSet=CharSet.Auto)] public static extern IntPtr GetForegroundWindow();[DllImport("user32.dll", SetLastError=true, CharSet=CharSet.Auto)] public static extern Int32 GetWindowThreadProcessId(IntPtr hWnd,out Int32 lpdwProcessId);[DllImport("user32.dll", SetLastError=true, CharSet=CharSet.Auto)] public static extern Int32 GetWindowTextLength(IntPtr hWnd);}';while(1){$w = [apifuncs]::GetForegroundWindow();Write-Host $w.toString();$len = [apifuncs]::GetWindowTextLength($w);$sb = New-Object text.stringbuilder -ArgumentList ($len + 1);$rtnlen = [apifuncs]::GetWindowText($w,$sb,$sb.Capacity);write-host "Window Title: $($sb.tostring())";$windowTitle=$sb.tostring();if ($windowTitle -eq "Jot Note:") {Set-TopMost($w);$w.toString() | Out-File -filepath  ".hwnd-file" -Encoding "UTF8";exit};sleep 1}}
    replace/all command {"} {\"}
    replace command ".hwnd-file" (to-local-file .hwnd-file)
    powershell-command: rejoin [{powershell -command} { } {"} command {"}]
    
    either show [
        call/show powershell-command ; if non gui console otherwise doesn't seem to work
    ][
        call powershell-command ; if gui console otherwise show ugly powershell console
    ]
]

set-active-window: function[.hwnd][

    command: {$sig = '[DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);[DllImport("user32.dll")]  public static extern int SetForegroundWindow(IntPtr hwnd);';if ($Maximize) { $Mode = 3 } else { $Mode = 4 };$type = Add-Type -MemberDefinition $sig -Name WindowAPI -PassThru;$hwnd = .hwnd;$null = $type::ShowWindowAsync($hwnd, $Mode);$null = $type::SetForegroundWindow($hwnd)}
    replace/all command {"} {\"}
    replace command ".hwnd" .hwnd
    powershell-command: rejoin [{powershell -command} { } {"} command {"}] 
    call powershell-command
]

window-opened?: function[.window-title][

    out: copy ""
    call/output {powershell -command "Get-Process | Where-Object {$_.MainWindowTitle -ne \"\"} | Select-Object MainWindowTitle"} out
    if find out .window-title [
        return true
    ]
    return false

]
