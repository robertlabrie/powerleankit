Add-Type -Path $PSScriptRoot\RestSharp.105.0.1\lib\net4\RestSharp.dll
Add-Type -Path $PSScriptRoot\Newtonsoft.Json.6.0.6\lib\net40\Newtonsoft.Json.dll
Add-Type -Path $PSScriptRoot\LeanKit.API.Client.1.0.8\lib\net40\LeanKit.API.Client.Library.dll

#Add-Type -Path $PSScriptRoot\LeanKit.API.Client.1.0.8\lib\net40\LeanKit.API.Client.Library.dll -
$lk = New-Object LeanKit.API.Client.Library.LeanKitBasicAuth

Function New-LeanKitAuthentation
{
    Param(
         [Parameter(
            Position=0,
            Mandatory=$true,
            ValueFromPipeline=$true,
            ValueFromPipelineByPropertyName=$true)
            ]$Hostname,
         [Parameter(
            Position=1,
            ValueFromPipeline=$true,
            ValueFromPipelineByPropertyName=$true)
            ]$userName,
         [Parameter(
            Position=2,
            ValueFromPipeline=$true,
            ValueFromPipelineByPropertyName=$true)
            ]$password,
         [Parameter(
            Position=0,
            ValueFromPipeline=$true,
            ValueFromPipelineByPropertyName=$true)
            ]$credential
    )
}