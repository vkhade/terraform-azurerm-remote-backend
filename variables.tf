variable "resource_group_name" {
  description = "Resource group name associated with storage account"
  type = string
}

variable "location" {
  description = "Location associated with storage account"
  type = string
}

variable "account_tier" {
  description = "Account tier in use for storage"
  type = string
  default = "Standard"
}

variable "account_replication_type" {
  description = "Storage accont replication type in use"
  type = string
  default = "LRS"
}

variable "tags" {
    description = "Tags associated with storage account"
    type = map
    default = {}
}

variable "name_prefix" {
    description = "Name prefix to use for storage account name"
    type = string
}

variable "container_access_type" {
  description = "Access type of container - private/ public"
  type = string
  default = "private"
}

variable "virtual_network_subnet_ids" {
  description = "List of resource ids for subnets"
  type = list 
  default  = []
}

variable "ip_rules" {
  description = "List of public IP / IP ranges in CIDR format"
  type = list 
  default = []
}















