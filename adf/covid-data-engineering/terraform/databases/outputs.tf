output "sql_server_name" {
  description = "Name of the Azure SQL logical server"
  value       = azurerm_mssql_server.this.name
}

output "sql_server_id" {
  description = "Resource ID of the Azure SQL logical server"
  value       = azurerm_mssql_server.this.id
}

output "sql_server_fully_qualified_domain_name" {
  description = "Fully qualified domain name of the Azure SQL logical server"
  value       = azurerm_mssql_server.this.fully_qualified_domain_name
}