output "SB_id" {
  value = [
    for sb in azurerm_subnet.sbconnect : sb.id
  ]
}