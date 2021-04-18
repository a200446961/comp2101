﻿#Netwrk Conf
Get-CimInstance Win32_NetworkAdapterConfiguration | Where-Object IPEnabled -EQ True | Select-Object Description, Index, 
@{n="IPAddress";e={$_.ipaddress}},
@{n="Subnet Mask";e={$_.IPSubnet}},
@{n="DNS Domain Name";e={$_.DNSHostName}},
@{n="DNS Server";e={$_.DNSServerSearchOrder}} | Format-Table