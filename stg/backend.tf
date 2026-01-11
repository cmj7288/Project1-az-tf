terraform {
  backend "azurerm" {
    resource_group_name  = "pro1rg"
    storage_account_name = "pro1stgsa"
    container_name      = "tfstate"
    key                 = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}