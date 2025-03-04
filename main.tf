module "resource_group" {
  source = "./modules/resource_group"
  location = "East US"
  resource_group_name = "myResourceGroup"
}

module "network" {
  source = "./modules/network"
  rg_location = module.resource_group.resource_group_location
  rg_name = module.resource_group.resource_group_name
  prefix = "v2"
}

module "linux_virtual_machine" {
  source = "./modules/linux_virtual_machine"
  rg_location = module.resource_group.resource_group_location
  rg_name = module.resource_group.resource_group_name
  network_interface_id = module.network.network_interface_id
  prefix = "v2"
}