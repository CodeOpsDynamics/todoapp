resource "azurerm_network_security_group" "nsgconnect" {
  for_each            = var.nsg
  name                = each.value.name
  location            = data.azurerm_resource_group.rgconnect.location
  resource_group_name = data.azurerm_resource_group.rgconnect.name

  dynamic "security_rule" {
    for_each = var.rule == null ? {} : var.rule
    content {
    name                       = security_rule.value.n
    priority                   = security_rule.value.priority
    direction                  = security_rule.value.name
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = security_rule.value.port
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    description = security_rule.value.ds
  }
}
}