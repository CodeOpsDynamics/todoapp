resource "azurerm_network_interface" "nicconnect" {
  for_each            = var.nic
  name                = each.value.names
  location            = "West Europe"
  resource_group_name = "terrarg1"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.sbconnect[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}