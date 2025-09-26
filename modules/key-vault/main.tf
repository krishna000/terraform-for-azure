resource "azurerm_key_vault" "kv" {
  location            = var.location
  name                = var.key_vault_name
  resource_group_name = var.resource_group_name
  sku_name            = "standard"
  tenant_id           = var.tenant_id
  purge_protection_enabled = false
}

resource "azurerm_key_vault_secret" "example" {
  name = "example-secret"
  value = var.example_secret_value
  key_vault_id = azurerm_key_vault.kv.id
}