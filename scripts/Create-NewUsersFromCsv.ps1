$NewUsers = Import-Csv -Path C:\CSV\NewUsers.csv
# csv file contains headers of FirstName, Surname, City, Country, Department to be saved as properties

Foreach ($User in $NewUsers)
# Process list of users
{

$properties =
# create array of necessary values to be fed into New-ADUser cmdlet
  @{
  
  "GivenName" = $User.FirstName
  "Surname" = $User.Surname
  "City" = $User.City
  "Country" = $User.Country
  "Department" = $User.Department
  "SamAccountName" = $User.FirstName + "." + $User.Surname
  "Name" = $User.FirstName + " " + $User.Surname
  "DisplayName" = $User.FirstName + " " + $User.Surname
  "Email" = $User.FirstName + $User.Surname + "@chair.corp.com"
  
  }


  $Pass = [System.Web.Security.Membership]::GeneratePassword(16,4)
  # create plaintext password with .NET
  # System.Web.Security namespace; Memberhip class; GeneratePassword method
  $SecurePass = $Pass | Convert-ToSecureString -AsPlainText -Force
  # convert to secure password
  
  New-ADUser @properties -Enabled $True `
  # feeding object $properties (with @) into cmdlet, all 
  # escape character ` for formatting
             -ChangePasswordAtLogin $True `
             -AccountPassword $SecurePass `
             -Path "CN=$($User.Department),DC=chair,DC=corp,DC=com"
             
} # End of Foreach
