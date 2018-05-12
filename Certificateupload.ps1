#This script uploads the certificate to the webapp
param(
[Parameter(Mandatory=$true)]
[string]$hostname,
[Parameter(Mandatory=$true)]
[string]$rgname,
[Parameter(Mandatory=$true)]
[string]$webappname,
[Parameter(Mandatory=$true)]
[string]$certificatepath,
[Parameter(Mandatory=$true)]
[string]$certificatepwd
)


#Login-AzureRmAccount
#Select-AzureRmSubscription -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
New-AzureRmWebAppSSLBinding -ResourceGroupName $rgname -WebAppName $webappname -CertificateFilePath $certificatepath -CertificatePassword $certificatepwd -Name $hostname

#.\certificateupload.ps1 -hostname www.abc.com -rgname rscgrpname -webappname DevApp -certificatepath \\AXXXXXXXX\Certificate\abc.pfx -certificatepwd XYZVG
