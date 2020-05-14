
resource "random_integer" "ri" {
  min = 1000
  max = 2000
}

locals {
    namespace = "${var.name_prefix}${random_integer.ri.result}"
}

# Creates an azure storge account
resource "azurerm_storage_account" "storage_account" {
  name = local.namespace
  resource_group_name = var.resource_group_name
  location = var.location
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type

  network_rules {
      default_action = "Allow"
      ip_rules = var.ip_rules
      virtual_network_subnet_ids = var.virtual_network_subnet_ids
  } 

  tags = var.tags
}

# Creates an azure storage container
resource "azurerm_storage_container" "storage_container" {
  name = "${local.namespace}-container"
  storage_account_name = azurerm_storage_account.storage_account.name
  container_access_type = var.container_access_type
}
