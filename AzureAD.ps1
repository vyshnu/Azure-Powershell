
#This script updates an existing Azure Active Directory Application
param(
[parameter(Mandatory = $true)]
[String] $AppRegDN,

[parameter(Mandatory = $true)]
[String] $appid,

[parameter(Mandatory = $true)]
[String[]] $replyuri
)
#Login-AzureRmAccount
#Select-AzureRmSubscription -SubscriptionId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
#Set-AzureRmADApplication -DisplayName abctest -ApplicationId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx -ReplyUrls https://abc.azurewebsites.net
Set-AzureRmADApplication -DisplayName $AppRegDN -ApplicationId $appid -ReplyUrls $replyuri
