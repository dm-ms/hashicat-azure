#provider "azurerm" {
#  features {}
#}

module "network" {
  source  = "iacdev.wpp.cloud/WPP-Lab/network/azurerm"
  version = "3.0.1"
  # insert required variables here
resource_group_name = azurerm_resource_group.myresourcegroup.name

}

#module "network" {
#  source  = "iacdev.wpp.cloud/WPP-Lab/network/azurerm"
#  version = "3.0.1"
#
#  resource_group_name = "VNetGaurav"
#}

#resource "azurerm_resource_group" "example" {
#  name     = "my-resources"
#  location = "West Europe"
#}

#module "network" {
#  source              = "Azure/network/azurerm"
#  resource_group_name = azurerm_resource_group.example.name
#  address_spaces      = ["10.0.0.0/16", "10.2.0.0/16"]
#  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#  subnet_names        = ["subnet1", "subnet2", "subnet3"]
#
#  subnet_service_endpoints = {
#    "subnet1" : ["Microsoft.Sql"], 
#    "subnet2" : ["Microsoft.Sql"],
#    "subnet3" : ["Microsoft.Sql"]
#  }
#
#  tags = {
#    environment = "dev"
#    costcenter  = "it"
#  }
#
#  depends_on = [azurerm_resource_group.example]
#}

resource "azurerm_virtual_network" "Gvnet" {
  name                = "${var.prefix}-G-vnet"
  location            = azurerm_resource_group.myresourcegroup.location
  address_space       = [var.address_space]
  resource_group_name = azurerm_resource_group.myresourcegroup.name
}



