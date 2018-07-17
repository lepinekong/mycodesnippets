Red [
    Title: "get-env.red"
    Description: {
        Get USERNAME to call notepad to edit Powershell Profile
    }
]

powershell.profile: function [][
	;USERNAME: get-env "username"
	;call/show rejoin [{notepad.exe C:\Users\} USERNAME {\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1}]
    USERPROFILE: get-env "USERPROFILE"
	call/show rejoin [{notepad.exe } {"} USERPROFILE {\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1} {"}]
]
powershell-profile: :powershell.profile

print {
    type in red console:
    powershell.profile
    or
    powershell-profile
}


