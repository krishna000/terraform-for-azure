resource "azurerm_virtual_network" "vnet" {
  location            = var.location
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}

resource "azurerm_subnet" "aks_subnet" {
  address_prefixes     = [var.subnet_aks_prefix]
  name                 = var.subnet_aks_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
}

resource "azurerm_subnet" "backend_subnet" {
  address_prefixes     = [var.subnet_backend_prefix]
  name                 = var.subnet_backend_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
}