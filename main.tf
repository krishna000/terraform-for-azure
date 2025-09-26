terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# Resource Group Module
module "resource_group" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Storage Account Module
module "storage_account" {
  source = "./modules/storage-account"

  resource_group_name  = module.resource_group.resource_group_name
  location             = module.resource_group.resource_group_location
  storage_account_name = var.storage_account_name
}

module "key_vault" {
  source               = "./modules/key-vault"
  key_vault_name       = var.key_vault_name
  resource_group_name  = module.resource_group.resource_group_name
  location             = var.location
  tenant_id            = var.tenant_id
  example_secret_value = var.example_secret_value
}