resource "azurerm_network_interface_security_group_association" "nsg-nic" {
  for_each = var.nsi
  network_interface_id      = each.value.nic_id
  network_security_group_id = each.value.nsg_id
}