variable "project_name" {
  description = "Project identifier used in Azure resource naming"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]+(-[a-z0-9]+)*$", var.project_name))
    error_message = "Project name must contain lowercase letters and numbers separated by single hyphens."
  }
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be dev, test, or prod."
  }
}

variable "location" {
  description = "Azure region for foundation resources"
  type        = string
  default     = "Central India"
}

variable "location_code" {
  description = "Short code for the Azure region used in resource naming"
  type        = string
  default     = "cin"
}

variable "storage_replication_type" {
  description = "Replication type for storage accounts"
  type        = string
  default     = "LRS"
}

variable "storage_account_tier" {
  description = "Performance tier for storage accounts"
  type        = string
  default     = "Standard"
}

variable "storage_access_tier" {
  description = "Default access tier for storage accounts"
  type        = string
  default     = "Hot"
}
variable "data_factory_name" {
  description = "Name of the Azure Data Factory"
  type        = string
}