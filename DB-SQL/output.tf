output "db-id" {
  value = [
    for db in azurerm_mssql_database.dbconnect : db.id
  ]
}