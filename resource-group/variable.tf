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