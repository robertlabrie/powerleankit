Add-Type -Path $PSScriptRoot\RestSharp.105.0.1\lib\net4\RestSharp.dll
Add-Type -Path $PSScriptRoot\Newtonsoft.Json.6.0.6\lib\net40\Newtonsoft.Json.dll
Add-Type -Path $PSScriptRoot\LeanKit.API.Client.1.0.8\lib\net40\LeanKit.API.Client.Library.dll

Get-ChildItem -Path $PSScriptRoot\functions -Recurse | % { . $_.fullName }

. $PSScriptRoot\auth.ps1

$api = New-LeanKitClient -leanKitAuth $auth

$api.GetBoards()