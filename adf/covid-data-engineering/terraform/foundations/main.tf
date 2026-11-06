
resource "azurerm_resource_group" "this" {
  name     = "rg-${var.project_name}-${var.environment}-weu"
  location = var.location

  tags = {
    project     = var.project_name
    environment = var.environment
    managed_by  = "terraform"
  }
}
