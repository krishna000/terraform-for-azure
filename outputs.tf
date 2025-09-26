output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "resource_group_location" {
  value = module.resource_group.resource_group_name
}

output "storage_account_name" {
  value = module.storage_account.name
}

output "storage_account_id" {
  value = module.storage_account.id
}

output "key_vault_name" {
  value = module.key_vault.key_vault_name
}

output "key_vault_id" {
  value = module.key_vault.key_vault_id
}
