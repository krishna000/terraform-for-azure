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

module "virtual_network" {
  source                = "./modules/virtual-network"
  resource_group_name   = module.resource_group.name
  location              = module.resource_group.location
  vnet_name             = "tf-vnet"
  subnet_aks_name       = "subnet-aks"
  subnet_aks_prefix     = "10.0.1.0/24"
  subnet_backend_name   = "subnet-backend"
  subnet_backend_prefix = "10.0.2.0/24"
}

module "rbac" {
  source            = "./modules/rbac"
  resource_group_id = module.resource_group.id
  role_name         = var.rbac_role_name
  principal_id      = var.rbac_principal_id
}

module "blob_container" {
  source                = "./modules/blob-container"
  container_name        = var.container_name
  storage_account_id    = module.storage_account.id
  container_access_type = var.container_access_type

}