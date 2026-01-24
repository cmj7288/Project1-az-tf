#!/bin/bash

# Script to create backend for project 1

RG_NAME="pro1rg"
STG_SA="pro1stgsa"
DEV_SA="pro1devsa"
CONTAINER_NAME="tfstate"
LOCATION="eastus"

echo "Creating resource group..."
az group create --name $RG_NAME --location $LOCATION

echo "Creating storage account for staging..."
az storage account create \
  --resource-group $RG_NAME \
  --name $STG_SA \
  --sku Standard_LRS \
  --encryption-services blob

echo "Creating storage account for dev..."
az storage account create \
  --resource-group $RG_NAME \
  --name $DEV_SA \
  --sku Standard_LRS \
  --encryption-services blob

echo "Creating blob container for staging..."
az storage container create \
  --name $CONTAINER_NAME \
  --account-name $STG_SA

echo "Creating blob container for dev..."
az storage container create \
  --name $CONTAINER_NAME \
  --account-name $DEV_SA

echo "Done ✅"
