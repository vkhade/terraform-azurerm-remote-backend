Terraform module used to setup a remote state of azure resources as azure storage backend. Use this module prior to any new deployment using terraform. Module outputs can be used as furhter inputs to new configuration parameters. 

Usage - 

module "remote-storage" {
  source              = "./remote-storage"
  name_prefix         = "name_prefix"
  resource_group_name = "my_resource_group_name"
  location            = "location"

  tags = {
    tag1 = ""
    tag2   = ""
  }
}  

Module outputs - 

storage_account_name
container_name
primary_access_key

