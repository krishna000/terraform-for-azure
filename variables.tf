variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "East US"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique storage account name"
}