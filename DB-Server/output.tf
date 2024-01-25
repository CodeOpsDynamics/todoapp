output "dbserver-id" {
  value = [
    for dbs in azurerm_mssql_server.dbseverconnect : dbs.id
  ]
}