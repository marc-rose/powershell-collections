#Remote to machine and return PowerShell version
$ListOfServers = "Server1", "Server2", "Server3"
$Results = Invoke-Command $ListOfServers -ScriptBlock {
$PSVersionTable.PSVersion
}
$Results | Sort-Object PSComputerName
