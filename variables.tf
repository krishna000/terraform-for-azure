variable "subscription_id" {
  description = "Azure Subscription Id"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "tf-rg-lesson"
}

variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique storage account name"
}

variable "key_vault_name" {
  type        = string
  description = "Name of key Vault"
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "example_secret_value" {
  type = string
}

variable "aks_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "node_count" {
  type = number
}

variable "vm_size" {
  type = number
}

variable "rbac_principal_id" {
  type        = string
  description = "Object ID of the user, group, or service principal"
}

variable "rbac_role_name" {
  type        = string
  description = "Name of the role to assign in the Resource Group"
  default     = "Reader"
}
variable "container_name" {
  description = "The name of the storage container to create"
  type        = string
  default     = "app-container"
}

variable "container_access_type" {
  description = "Access level of the Storage container"
  type        = string
  default     = "private"
}