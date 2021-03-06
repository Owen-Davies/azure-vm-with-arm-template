$subscriptionId = ""
Select-AzureRmSubscription -SubscriptionId $subscriptionId

$resourceGroup = "test-infra"
$location = "North Europe"

New-AzureRmResourceGroup -Name $resourceGroup -Location $location

New-AzureRmResourceGroupDeployment `
    -Name test-infra-deployment `
    -ResourceGroupName $resourceGroup `
    -TemplateFile new-vm.json `
    -Verbose -Force