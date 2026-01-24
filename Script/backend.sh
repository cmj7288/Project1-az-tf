#Script to cre
ate backend for project 1
RG_NAME = 'pro1rg'
STG_SA = 'pro1stgsa'
DEV_SA = 'pro1devsa'
CONTAINER_NAME = 'tfstate'

# Create resource group
az group create --name $RG_NAME --location eastus
# Create storage account for staging environment
az storage account create --resource-group $RG_NAME --name $STG_SA --sku Standard_LRS --encryption-services blob
# Create storage account for dev environment
az storage account create --resource-name $RG_NAME --name $DEV_SA --sku Standard_LRS --encryption-services blob
# Create blob container for staging environment
az storage container create --name $CONTAINER_NAME --account-name $STG_SA
# Create blob container for dev environment
az storage container create --name $CONTAINER_NAME --account-name $DEV_SA

echo "Done ✅"
