
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
  default     = "West Europe"
}
