
output "storageacct-ID" {
    value = azurerm_storage_account.storage-block.id
  
}

output "storageacct-name" {
    value = azurerm_storage_account.storage-block.name
  
}
# output "rg-name" {
#     value = azurerm_resource_group.rg-block.name
  
# }
# output "replication-type" {
#     value = azurerm_storage_account.storage-block.account_replication_type
# }