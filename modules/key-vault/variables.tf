variable "key_vault_name" {
  description = "The name of the key vault (globally unique)"
  type = string
}

variable "resource_group_name" {
  description = "Resource group name where key vault will be created."
  type = string
}

variable "location" {
  description = "Azure region for key vault"
  type = string
}

variable "tenant_id" {
  description = "Azure AD Tenant ID for key Vault"
}

variable "example_secret_value" {
  description = "A sample secret to store in the key vault"
  type = string
}