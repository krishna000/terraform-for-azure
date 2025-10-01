output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_aks_id" {
  value = azurerm_subnet.aks_subnet.id
}

output "subnet_backend_id" {
  value = azurerm_subnet.backend_subnet.id
}