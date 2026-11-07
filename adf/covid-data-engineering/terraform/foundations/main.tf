resource "azurerm_resource_group" "this" {
  name     = "rg-${var.project_name}-${var.environment}-${var.location_code}"
  location = var.location

  tags = local.common_tags
}

# Standard Blob Storage Account
resource "azurerm_storage_account" "blob" {
  name                     = "st${replace(var.project_name, "-", "")}blob${var.environment}${var.location_code}001"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
  access_tier              = var.storage_access_tier

  is_hns_enabled = false

  tags = merge(local.common_tags, {
    purpose = "standard-blob-storage"
  })
}

# ADLS Gen2 Storage Account
resource "azurerm_storage_account" "adls" {
  name                     = "st${replace(var.project_name, "-", "")}adls${var.environment}${var.location_code}001"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
  access_tier              = var.storage_access_tier

  is_hns_enabled = true

  tags = merge(local.common_tags, {
    purpose = "adls-gen2"
  })
}