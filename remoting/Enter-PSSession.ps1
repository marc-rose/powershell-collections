# Simplest way to remotely access using WinRM service
# Remote Machine must be listening on ports 5985 and 5986 and WinRM must be running
$RemoteMachineName = "PCNAME"
Enter-PSSession $RemoteMachineName # -Credential $Cred
# Enter-PSSession creates interactive command prompt on remote machine. Run whatever commands you like

