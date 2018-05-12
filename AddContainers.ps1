#This script shows an example on how to add container (type = blob and container) to storage account 
param(
[parameter(Mandatory = $true)]
[String] $StorageAccountName,

[parameter(Mandatory = $true)]
[String] $RGName,

[parameter(Mandatory = $true)]
[String[]] $containername #Entering only two container names #You can modify code as per your need

)

#Login-AzureRmAccount
#Select-AzureRmSubscription -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
Set-AzureRmCurrentStorageAccount -StorageAccountName $StorageAccountName -ResourceGroupName $RGName
$x = Get-AzureStorageContainer -Name $containername[0] 
if(!$x)
{
New-AzureStorageContainer -Name $containername[0] -Permission Blob
}
$y = Get-AzureStorageContainer -Name $containername[1] 
if(!$y)
{
New-AzureStorageContainer -Name $containername[1] -Permission Container
}

