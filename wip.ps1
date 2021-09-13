#The user gets to select the targets IP

$menu = {
    Read-Host -Prompt 'Do you want to do a [Full] Port Scan on the target? Or [Basic] Port Scan?'
    if ($basic -eq "Basic") {
        &$basic
    } else {
        Write-Host 'Error Close and reopen'
    }

}

$basic
$ip = Read-Host -Prompt 'Enter the IP'
#Testing certain ports, feel free to edit.
Test-NetConnection -ComputerName $ip -port 22
timeout /t 3 /nobreak
Test-NetConnection -ComputerName $ip -port 3389
timeout /t 3 /nobreak
Test-NetConnection -ComputerName $ip -port 646
timeout /t 3 /nobreak
Test-NetConnection -ComputerName $ip -port 5900
timeout /t 3 /nobreak
Test-NetConnection -ComputerName $ip -port 22222
timeout /t 3 /nobreak

#Finally, it pauses the script so you can see what happened.
pause