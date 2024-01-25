resource "azurerm_storage_account" "saconnect" {
  for_each                 = var.sa
  name                     = each.value.name
  resource_group_name      = data.azurerm_resource_group.rgconnect.name
  location                 = data.azurerm_resource_group.rgconnect.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Production"
  }
}

resource "azurerm_storage_container" "caconnect" {
  for_each              = var.sa
  name                  = each.value.caname
  storage_account_name  = azurerm_storage_account.saconnect[each.key].name
  container_access_type = "private"
}
