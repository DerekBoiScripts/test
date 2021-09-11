#The user gets to select the targets IP
$ip = Read-Host -Prompt 'Enter the IP'


#Testing certain ports, feel free to edit.
Test-NetConnection -computername $ip -port 22
timeout /t 3 /nobreak
Test-NetConnection -computername $ip -port 3389
timeout /t 3 /nobreak
Test-NetConnection -computername $ip -port 646
timeout /t 3 /nobreak
Test-NetConnection -computername $ip -port 5900
timeout /t 3 /nobreak
Test-NetConnection -computername $ip -port 22222
timeout /t 3 /nobreak

#Finally, it pauses the script so you can see what happened.
pause