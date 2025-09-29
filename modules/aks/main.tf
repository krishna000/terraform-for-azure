resource "azurerm_kubernetes_cluster" "aks" {
  location            = var.aks_name
  name                = var.location
  resource_group_name = var.resource_group_name
  dns_prefix = var.dns_prefix

  default_node_pool {
    name = "default"
    node_count = var.node_count
    vm_size = var.node_size
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control_enabled = true

  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "standard"
  }
}