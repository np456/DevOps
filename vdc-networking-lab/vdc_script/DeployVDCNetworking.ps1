# User must be logged into their Azure account

#As per https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-cross-resource-group-deployment
$firstRG = "VDC-Hub"
$secondRG = "VDC-Spoke1"
$thirdRG = "VDC-Spoke2"
$fourthRG = "VDC-OnPrem"
$fifthRG = "VDC-NVA"

New-AzResourceGroup -Name $firstRG -Location australiaeast
New-AzResourceGroup -Name $secondRG -Location australiaeast
New-AzResourceGroup -Name $thirdRG -Location australiaeast
New-AzResourceGroup -Name $fourthRG -Location australiaeast
New-AzResourceGroup -Name $fifthRG -Location australiaeast

<#New-AzResourceGroupDeployment `
  -Name "VDC-Create" `
  -ResourceGroupName $firstRG `
  -TemplateUri "https://raw.githubusercontent.com/Araffe/vdc-networking-lab/master/VDC-Networking-Master.json"
  #>