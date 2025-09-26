variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "tf-rg-lesson"
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

variable "subscription_id" {
  description = "To pass the subscription id for resources"
  type        = string
}