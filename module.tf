# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "a94fedc6-4a19-4d5f-adc2-b3d2ed89ef6c"
  client_secret   = "Eol8Q~BeG~7iHwJc_xVvr4DVyJ1tvfBCP9Khydo6"
  tenant_id       = "04dbe115-60d5-42fd-a414-2466c1bd253b"
  subscription_id = "fafef1fd-8570-4dd8-b315-16af1fa631cf"
}

module "Dev" {
  source = "github.com/Ssaimanikanta139-web/terraform_module.git"

  azurerm_resource_group_name = "sai-terr-Dev-rg"

  location = "East US 2"

  azurerm_virtual_network_name = "sai-terr-Dev-Vnet"

  address_space = ["10.0.0.0/16"]

  snet01 = "sai-terr-Dev-subnet"

  address_prefixes01 = ["10.0.1.0/24"]

  snet02 = "sai-terr-Dev-subnet2"

  address_prefixes02 = ["10.0.2.0/24"]

  snet03 = "sai-terr-Dev-subnet3"

  address_prefixes03 = ["10.0.3.0/24"]
}

# module "Qa" {
#   source = "github.com/Ssaimanikanta139-web/terraform_module.git"

#   azurerm_resource_group_name = "sai-terr-Qa-rg"

#   location = "East US 2"

#   azurerm_virtual_network_name = "sai-terr-Qa-Vnet"

#   address_space = ["10.0.0.0/16"]

#   snet01 = "sai-terr-Qa-subnet"

#   address_prefixes01 = ["10.0.1.0/24"]

#   snet02 = "sai-terr-Qa-subnet2"

#   address_prefixes02 = ["10.0.2.0/24"]

#   snet03 = "sai-terr-Qa-subnet3"

#   address_prefixes03 = ["10.0.3.0/24"]
# }

# module "uat" {
#   source = "github.com/Ssaimanikanta139-web/terraform_module.git"

#   azurerm_resource_group_name = "sai-terr-uat-rg"

#   location = "East US 2"

#   azurerm_virtual_network_name = "sai-terr-uat-Vnet"

#   address_space = ["10.0.0.0/16"]

#   snet01 = "sai-terr-uat-subnet"

#   address_prefixes01 = ["10.0.1.0/24"]

#   snet02 = "sai-terr-uat-subnet2"

#   address_prefixes02 = ["10.0.2.0/24"]

#   snet03 = "sai-terr-uat-subnet3"

#   address_prefixes03 = ["10.0.3.0/24"]
# }

# module "prod" {
#   source = "github.com/Ssaimanikanta139-web/terraform_module.git"

#   azurerm_resource_group_name = "sai-terr-prod-rg"

#   location = "East US 2"

#   azurerm_virtual_network_name = "sai-terr-prod-Vnet"

#   address_space = ["10.0.0.0/16"]

#   snet01 = "sai-terr-prod-subnet"

#   address_prefixes01 = ["10.0.1.0/24"]

#   snet02 = "sai-terr-prod-subnet2"

#   address_prefixes02 = ["10.0.2.0/24"]

#   snet03 = "sai-terr-prod-subnet3"

#   address_prefixes03 = ["10.0.3.0/24"]
# }
