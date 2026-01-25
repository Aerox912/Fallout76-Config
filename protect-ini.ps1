# Remove read-only attribute first
attrib -R "c:\Users\herks\Documents\My Games\Fallout 76\Fallout76.ini"

# Get current ACL
$acl = Get-Acl "c:\Users\herks\Documents\My Games\Fallout 76\Fallout76.ini"

# Create deny rule for current user
$denyRule = New-Object System.Security.AccessControl.FileSystemAccessRule(
    $env:USERNAME,
    "Write,Delete,DeleteSubdirectoriesAndFiles,Modify,ChangePermissions",
    "Deny"
)

# Apply the rule
$acl.AddAccessRule($denyRule)
Set-Acl "c:\Users\herks\Documents\My Games\Fallout 76\Fallout76.ini" $acl

Write-Host "✓ Fallout76.ini is now protected from modification and deletion" -ForegroundColor Green
