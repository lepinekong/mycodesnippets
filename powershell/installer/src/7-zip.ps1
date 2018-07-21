# https://forum.pulseway.com/topic/1939-install-7-zip-with-powershell/

# Silent Install 7-Zip
# http://www.7-zip.org/download.html 

# Path for the workdir
$workdir = "c:\installer\"

# Check if work directory exists if not create it

If (Test-Path -Path $workdir -PathType Container)
{ Write-Host "$workdir already exists" -ForegroundColor Red}
ELSE
{ New-Item -Path $workdir  -ItemType directory }

# Download the installer

$source = "http://www.7-zip.org/a/7z1604-x64.msi"
$destination = "$workdir\7-Zip.msi"

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

Invoke-WebRequest $source -OutFile $destination 

# Start the installation

msiexec.exe /i "$workdir\7-Zip.msi" /qb

# Wait XX Seconds for the installation to finish

Start-Sleep -s 35

# Remove the installer

rm -Force $workdir\7*