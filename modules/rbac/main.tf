resource "azurerm_role_assignment" "rg_reader" {
  principal_id         = var.principal_id
  scope                = var.resource_group_id
  role_definition_name = var.role_name
}