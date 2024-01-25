resource "azurerm_virtual_network" "vnetconnect" {
  for_each            = var.vnet
  name                = each.value.name
  location            = data.azurerm_resource_group.rgconnect.location
  resource_group_name = data.azurerm_resource_group.rgconnect.name
  address_space       = each.value.addres_space
}