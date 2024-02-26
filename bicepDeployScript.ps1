### Tenant and Resource Group inputs
param(
    [Parameter(Mandatory=$true)][string] $tenantId,
    [Parameter(Mandatory=$true)][string] $subscriptionId,
    [Parameter(Mandatory=$true)][string] $resourceGroupName,
    [Parameter(Mandatory=$true)][string] $location,
    [Parameter(Mandatory=$true)][string] $bicepFileName
)

### Login to Azure
az login --tenant $tenantId

### Set the default subscription
az account set --subscription $subscriptionId

### Create a resource group
az group create --name $resourceGroupName --location $location

### Deploy the Bicep file
New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $bicepFileName -Mode Incremental -verbose

### Useful: az cognitiveservices account list-kinds
### Next Steps