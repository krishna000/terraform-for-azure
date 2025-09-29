output "aks_id" {
  description = "The aks cluster resource ID"
  value = azurerm_kubernetes_cluster.aks.id
}

output "aks_name" {
  description = "The AKS cluster name"
  value = azurerm_kubernetes_cluster.aks.name
}