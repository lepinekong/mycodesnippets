# https://forum.pulseway.com/topic/1937-install-dropbox-with-powershell/?tab=comments#comment-7806

# Silent Install Dropbox 
# Download URL: https://www.dropbox.com/downloading?full=1&os=win

# Path for the workdir
$workdir = "c:\installer\"

# Check if work directory exists if not create it

If (Test-Path -Path $workdir -PathType Container)
{ Write-Host "$workdir already exists" -ForegroundColor Red}
ELSE
{ New-Item -Path $workdir  -ItemType directory }

# Download the installer

$source = "hhttps://www.dropbox.com/download?full=1&plat=win"
$destination = "$workdir\dropbox.exe"

# Check if Invoke-Webrequest exists otherwise execute WebClient

if (Get-Command 'Invoke-Webrequest')
{
     Invoke-WebRequest $source -OutFile $destination
}
else
{
    $WebClient = New-Object System.Net.WebClient
    $webclient.DownloadFile($source, $destination)
}

# Start the installation

Start-Process -FilePath "$workdir\dropbox.exe" -ArgumentList "/S"

# Wait XX Seconds for the installation to finish

Start-Sleep -s 60

# Remove the installer

rm -Force $workdir\dropbox*