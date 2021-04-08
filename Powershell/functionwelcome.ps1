function welcome { 
"Welcome to Powershell"
write-output "Welcome to planet $env:computername Overlord $env:username"
$now = get-date -format 'HH:MM tt on dddd'
write-output "It is $now."
}

function get-cpuinfo {
Get-CimInstance cim_processor | Format-List "Manufacturer", "Name", "MaxClockSpeed", "NumberofCrores"
}

function get-mydisks {
Get-Disk | Format-Table Manufacturer, Model, SerialNumber, FirmwareRevision, Size
}