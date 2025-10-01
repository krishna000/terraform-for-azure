output "name" {
  description = "The name of the selected Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "location" {
  description = "The location of the created Resource Group"
  value       = azurerm_resource_group.rg.location
}

output "id" {
  value = azurerm_resource_group.rg.id
}