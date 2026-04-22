Import-Module ActiveDirectory

# Create OUs
New-ADOrganizationalUnit -Name "Workstations" -Path "DC=hybridlab,DC=local"
New-ADOrganizationalUnit -Name "Users" -Path "DC=hybridlab,DC=local"
New-ADOrganizationalUnit -Name "Groups" -Path "DC=hybridlab,DC=local"

# Create lab users
$pw = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force

New-ADUser -Name "Lab User 1" `
  -SamAccountName "labuser1" `
  -UserPrincipalName "labuser1@hybridlab.local" `
  -AccountPassword $pw `
  -Enabled $true `
  -Path "OU=Users,DC=hybridlab,DC=local"

New-ADUser -Name "Lab User 2" `
  -SamAccountName "labuser2" `
  -UserPrincipalName "labuser2@hybridlab.local" `
  -AccountPassword $pw `
  -Enabled $true `
  -Path "OU=Users,DC=hybridlab,DC=local"