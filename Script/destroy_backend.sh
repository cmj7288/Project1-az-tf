#!/bin/bash

# Destroy Terraform backend resources in Azure

RG_NAME="pro1rg"

echo "⚠️ WARNING: This will delete the resource group and ALL resources inside it!"
read -p "Are you sure you want to continue? (yes/no): " CONFIRM

if [ "$CONFIRM" != "yes" ]; then
  echo "❌ Operation cancelled."
  exit 1
fi

echo "Deleting resource group: $RG_NAME ..."
az group delete --name $RG_NAME --yes --no-wait

echo "✅ Delete request submitted successfully!"
