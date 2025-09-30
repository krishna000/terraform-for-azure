variable "storage_account_name" {
  type        = string
  description = "Globally unique storage account name"
}

variable "resource_group_name" {
  description = "RG name where storage account will get created"
  type = string
}

variable "location" {
  type = string
  description = "Azure region for storage account"
}