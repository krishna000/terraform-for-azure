variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the VNet"
  default     = ["10.0.0.0/16"]
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group to deploy Vnet in"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "subnet_aks_name" {
  type        = string
  description = "Subnet name for AKS"
  default     = "subnet-aks"
}

variable "subnet_aks_prefix" {
  type        = string
  description = "Address prefix for AKS subnet"
  default     = "10.0.1.0/24"
}

variable "subnet_backend_name" {
  type        = string
  description = "Subnet name for backend resources"
  default     = "subnet-backend"
}

variable "subnet_backend_prefix" {
  type        = string
  description = "Address prefix for backend subnet"
  default     = "10.0.2.0/24"
}