output "resource_group_name" {
  value = module.resource_group.name
}

output "resource_group_location" {
  value = module.resource_group.location
}

output "storage_account_name" {
  value = module.storage_account.name
}

output "storage_account_id" {
  value = module.storage_account.id
}

output "key_vault_name" {
  value = module.key_vault.name
}

output "key_vault_id" {
  value = module.key_vault.id
}

output "aks_name" {
  value = module.aks.name
}

output "aks_fqdn" {
  value = module.aks.fqdn
}

output "vnet_id" {
  value = module.virtual_network.vnet_id
}

output "subnet_aks_id" {
  value = module.virtual_network.subnet_aks_id
}

output "subnet_backend_id" {
  value = module.virtual_network.subnet_backend_id
}

output "rbac_role_assignment_id" {
  value = module.rbac.role_assignment_id
}