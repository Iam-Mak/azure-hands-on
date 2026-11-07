# Read outputs from the foundations Terraform state
data "terraform_remote_state" "foundations" {
  backend = "local"

  config = {
    path = "../foundations/terraform.tfstate"
  }
}

# Reuse values from foundations
locals {
  resource_group_name = data.terraform_remote_state.foundations.outputs.resource_group_name
  location            = data.terraform_remote_state.foundations.outputs.location
}

# Azure SQL Logical Server
resource "azurerm_mssql_server" "this" {
  name                         = var.sql_server_name
  resource_group_name          = local.resource_group_name
  location                     = local.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password

  tags = local.common_tags
}