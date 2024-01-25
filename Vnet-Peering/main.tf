resource "azurerm_virtual_network_peering" "vnetp-1" {
  for_each                  = var.vnet-p
  name                      = each.value.name
  resource_group_name       = each.value.resource_group_name
  virtual_network_name      = each.value.vnetname
  remote_virtual_network_id = each.value.id2
}

resource "azurerm_virtual_network_peering" "vnetp-2" {
  for_each                  = var.vnet-p
  name                      = each.value.name2
  resource_group_name       = each.value.resource_group_name
  virtual_network_name      = each.value.vnet2name
  remote_virtual_network_id = each.value.id
}