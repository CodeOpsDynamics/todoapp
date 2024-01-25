data "azurerm_subnet" "sbconnect" {
  for_each = var.nic
  name                 = each.value.name
  virtual_network_name = each.value.vname
  resource_group_name  = each.value.rgname
  #location = "West Europe"
}