output "id" {
  description = "The aks cluster resource ID"
  value = azurerm_kubernetes_cluster.aks.id
}

output "name" {
  description = "The AKS cluster name"
  value = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  description = "The raw kube config to connect to AKS"
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
}

output "fqdn" {
  description = "The FQDN of the AKS API server"
  value = azurerm_kubernetes_cluster.aks.fqdn
}