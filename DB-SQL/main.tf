resource "azurerm_mssql_database" "dbconnect" {
  for_each            = var.db
  name                = each.value.name
  server_id           = each.value.id

  tags = {
    environment = "Production"
  }
}