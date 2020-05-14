output "storage_account_name" {
  description = "Storage account name"
  value = azurerm_storage_account.storage_account.name 
}

output "container_name" {
  description = "Storage account container name"
  value = azurerm_storage_container.storage_container.name
}

output "primary_access_key" {
  description = "Primary access key of storage account"
  value = azurerm_storage_account.storage_account.primary_access_key
}



