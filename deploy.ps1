#Check for or make the destination folder
$DeploymentFolder = $env:USERPROFILE + "\.vscode\extensions\acspl-plus-0.0.1"
if (Test-Path $DeploymentFolder) {
    Write-Host "Folder Exists"
    # Perform Delete file from folder operation
}
else
{
    #PowerShell Create directory if not exists
    New-Item $DeploymentFolder -ItemType Directory
    Write-Host "Folder Created successfully"
}

#Copy the syntaxes folder and required files
Copy-Item -Path language-configuration.json, package.json, syntaxes -Destination $DeploymentFolder -Recurse
