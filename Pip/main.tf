resource "azurerm_public_ip" "pipconnect" {
  for_each            = var.pip
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.rgconnect.name
  location            = data.azurerm_resource_group.rgconnect.location
  allocation_method   = "Static"
  sku = "Standard"

  tags = {
    environment = "Production"
  }
}