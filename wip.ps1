

$menu2 = Read-Host -Prompt 'Do you want to do a [Full] Port Scan on the target? Or [Basic] Port Scan?'


$basic = {
    if ($menu2 -eq "Basic") {

        #The user gets to select the targets IP
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

    } else {
        Write-Host 'Error Close and reopen'
    }

}

.$basic




$full = {
    if ($menu2 -eq "Full") {

        Clear-Host
        #The user gets to select the targets IP
        Write-Host 'This is the FULL scan, This CAN trip the firewall and lead to serious consequences; 
        I am not responsible for anything that may go wrong.'
        $ip = Read-Host -Prompt 'Enter the IP'

    #Probing ALL viable ports.. almost in order, feel free to edit.
Test-NetConnection -ComputerName $ip -port 21
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 22
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 23
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 25
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 53
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 80
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 110
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 135
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 143
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 443
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 636
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 1701
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 636
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 646
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 1433
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 995
    timeout /t 1 /nobreak
Test-NetConnection -ComputerName $ip -port 5900
    timeout /t 1 /nobreak


#Finally, it pauses the script so you can see what happened.
pause

    } else {
        Write-Host 'Error Close and reopen'
    }

}

.$full