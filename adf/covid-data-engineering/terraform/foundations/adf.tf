resource "azurerm_data_factory" "this" {
  name                = var.data_factory_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  tags = local.common_tags
}