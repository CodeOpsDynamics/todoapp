data "azurerm_resource_group" "rgconnect" {
  name = "terrarg1"
}


data "azurerm_network_interface" "nicconnect" {
  name                = "terranic1"
  resource_group_name = "terrarg1"
}