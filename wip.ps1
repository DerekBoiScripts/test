#The user gets to select the targets IP
$ip = Read-Host -Prompt 'Enter the IP'

Test-NetConnection -computername $ip -port 22
timeout /t 3
Test-NetConnection -computername $ip -port 3389
timeout /t 3
Test-NetConnection -computername $ip -port 646
timeout /t 3
Test-NetConnection -computername $ip -port 5900
timeout /t 3