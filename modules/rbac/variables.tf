variable "resource_group_id" {
  type = string
  description = "ID of the resource group to assign role"
}

variable "role_name" {
  type = string
  description = "Name of the role to assign"
}

variable "principal_id" {
  type = string
  description = "Object ID of the user, group, or service principal"
}

