param(
[Parameter(Mandatory=$true)]
[string]$rgname,
[Parameter(Mandatory=$true)]
[string]$webappname,
[Parameter(Mandatory=$true)]
[string[]]$fqdn
)

#Login-AzureRmAccount
#Select-AzureRmSubscription -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
Set-AzureRmWebApp -Name $webappname -ResourceGroupName $rgname -HostNames $fqdn


# .\customdomain.ps1 -rgname resourcegrpname -webappname Abcwebappname -fqdn www.abcwa.com,abc.trafficmanager.net,abcappservice.azurewebsites.net
