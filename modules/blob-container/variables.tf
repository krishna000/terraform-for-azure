variable "container_name" {
  type        = string
  description = "The name of the storage container"
}

variable "storage_account_id" {
  type        = string
  description = "The ID of the storage account where this container will be created"
}

variable "container_access_type" {
  type        = string
  description = "Specifies the access level for the container"
  default     = "private"
}