# Resource Group Module
module "resource_group" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Storage Account Module
module "storage_account" {
  source               = "./modules/storage-account"
  storage_account_name = var.storage_account_name
  resource_group_name  = module.resource_group.name
  location             = module.resource_group.location
}

module "key_vault" {
  source              = "./modules/key-vault"
  key_vault_name      = "tf-kv-demo"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  tenant_id           = var.tenant_id
}

module "aks" {
  source              = "./modules/aks"
  aks_name            = "tf-aks-demo"
  dns_prefix          = "tfdemo"
  node_count          = 2
  vm_size             = "Standard_DS2_v2"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
}