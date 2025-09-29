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

module "aks" {
  source               = "./modules/aks"
  example_secret_value = var.aks_name
  key_vault_name       = module.resource_group.name
  resource_group_name  = var.location
  storage_account_name = var.dns_prefix
  subscription_id      = var.node_count
  tenant_id            = var.node_size
}