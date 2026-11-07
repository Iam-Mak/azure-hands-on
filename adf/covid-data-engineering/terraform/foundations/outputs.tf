
output "resource_group_name" {
  description = "Name of the foundation Resource Group"
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "Resource ID of the foundation Resource Group"
  value       = azurerm_resource_group.this.id
}

output "location" {
  description = "Azure region of the foundation Resource Group"
  value       = azurerm_resource_group.this.location
}


output "blob_storage_account_name" {
  description = "Standard Blob Storage Account name"
  value       = azurerm_storage_account.blob.name
}

output "adls_storage_account_name" {
  description = "ADLS Gen2 Storage Account name"
  value       = azurerm_storage_account.adls.name
}

output "data_factory_name" {
  description = "Name of the Azure Data Factory"
  value       = azurerm_data_factory.this.name
}

output "data_factory_id" {
  description = "Resource ID of the Azure Data Factory"
  value       = azurerm_data_factory.this.id
}