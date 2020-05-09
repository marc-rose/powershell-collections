Import-Module ActiveDirectory
$at = Read-Host "Enter attribute you are looking for"
Get-ADUser -Filter {($at -like "*")} -properties $at |
  Group $at |
    ? {$_.Count -ge 2} |
      select -ExpandProperty group |
        Select name,$at | 
          export-csv .\duplicate-$at.csv -notypeinformation
