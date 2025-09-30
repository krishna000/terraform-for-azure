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
