#Test connections to machines
#Good before you run any remote commands to lots of machines
#Test-NetConnection requires PS 6.1
Test-NetConnection PCNAME -port 5985 -InformationLevel Quiet
