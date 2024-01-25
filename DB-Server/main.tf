resource "azurerm_mssql_server" "dbseverconnect" {
  for_each                     = var.dbs
  name                         = each.value.name
  resource_group_name          = data.azurerm_resource_group.rgconnect.name
  location                     = data.azurerm_resource_group.rgconnect.location
  version                      = "12.0"
  administrator_login          = "admin-user"
  administrator_login_password = "Merahai@123"

  tags = {
    environment = "Production"
  }
}