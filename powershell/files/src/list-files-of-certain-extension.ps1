# http://itstuffilearnedtoday.blogspot.com/2015/06/get-list-of-all-files-with-certain.html

#####################################################################
# BEGIN SCRIPT
#####################################################################

#This script prompts for a file extension and a root path, then searches recursively within that path for that extension and sends you a report of all the files.

#Get Hostname
$Hostname = ($env:computername)

#Prompt for file extension to search for
$ext = Read-host "File Extension (do not enter a period)"
$ext = $ext.ToUpper()

#Create Temp File Location
$TempFile = "C:\Temp\FileQuery $ext.csv"

#Get Root Path to search in
$PathToSearch = Read-Host "Path to search (i.e. P:\)"

#Get your email address
$EmailAddress = Read-Host "Your email address (to send the report to)"

#Conduct search, export to CSV (Temp File)
get-childitem -Path $PathToSearch -Filter *.$ext -recurse | select name, Length, DirectoryName | export-csv -NoTypeInformation $TempFile

#Send CSV via email
Send-Mailmessage -to $EmailAddress -from me@contoso.com -smtpserver mailserver.contoso.com -Subject "$Ext Files on $Hostname in $PathToSearch" -Body "See Attached" -attachments $TempFile

#Delete the Temp File
remove-item $Tempfile

#####################################################################
# END SCRIPT
#####################################################################
