output "key_vault_id" {
  description = "The ID of the key vault"
  value = azurerm_key_vault.kv.id
}

output "key_vault_name" {
  description = "The name of the Key Vault"
  value = azurerm_key_vault.kv.name
}