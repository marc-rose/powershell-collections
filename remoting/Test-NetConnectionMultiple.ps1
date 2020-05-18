#Test connections to machines
#Good before you run any remote commands to lots of machines which may time out
#Test-NetConnection requires PS 6.1

#Simple test of a single computer
Test-NetConnection PCNAME -port 5985 -InformationLevel Quiet

#Creates a list of servers that respond, and a list thats does not
$online = @()
$offline = @()
$Computers = "svr01","svr02","svr03","svr04","svr05","google.com","4.2.2.2"
ForEach ($PC in $Computers)
{ switch (Test-NetConnection $PC -port 5985 -InformationLevel Quiet)
    {
      $True  { $online  += $PC }
      $False { $offline += $PC }
#     Default {}
    }
}
"Online:  `t$online"
"Offline: `t$offline"
