variable "storage_account_name" {
  type        = string
  description = "The name of storage account"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
  description = "Azure region for storage account"
}