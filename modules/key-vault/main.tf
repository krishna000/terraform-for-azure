resource "azurerm_key_vault" "kv" {
  location            = var.location
  name                = var.key_vault_name
  resource_group_name = var.resource_group_name
  sku_name            = "standard"
  tenant_id           = var.tenant_id
  purge_protection_enabled = false
  soft_delete_retention_days = 7
}
