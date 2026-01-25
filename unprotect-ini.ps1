# Get current ACL
$acl = Get-Acl "c:\Users\herks\Documents\My Games\Fallout 76\Fallout76.ini"

# Remove all deny rules
$acl.Access | Where-Object {$_.AccessControlType -eq "Deny"} | ForEach-Object {
    $acl.RemoveAccessRule($_) | Out-Null
}

# Apply the changes
Set-Acl "c:\Users\herks\Documents\My Games\Fallout 76\Fallout76.ini" $acl

Write-Host "✓ Fallout76.ini protection removed - file can now be edited" -ForegroundColor Green
