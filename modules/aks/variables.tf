variable "aks_name" {
  description = "Name of the AKS cluster"
  type = string
}

variable "resource_group_name" {
  description = "Resource group where AKS will be deployed"
  type = string
}

variable "location" {
  description = "Azure region for AKS cluster"
  type = string
}

variable "dns_prefix" {
  description = "DNS prefix for kubernetes API server"
  type = string
}

variable "node_count" {
  description = "Number of nodes in default pool"
  type = number
  default = 1
}

variable "vm_size" {
  description = "VM size for AKS nodes"
  type = string
  default = "Standard_DS2_v2"
}