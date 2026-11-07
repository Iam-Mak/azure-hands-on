variable "sql_server_name" {
  description = "Name of the Azure SQL logical server"
  type        = string
}

variable "sql_admin_username" {
  description = "Administrator username for the Azure SQL Server"
  type        = string
}

variable "sql_admin_password" {
  description = "Administrator password for the Azure SQL Server"
  type        = string
  sensitive   = true
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}