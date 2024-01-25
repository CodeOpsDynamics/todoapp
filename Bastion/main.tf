resource "azurerm_bastion_host" "bsconnect" {
    for_each = var.bs
  name                = each.value.name
  location            = data.azurerm_resource_group.rgconnect.location
  resource_group_name = data.azurerm_resource_group.rgconnect.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = each.value.sb_id
    public_ip_address_id = each.value.pip_id
  }
}