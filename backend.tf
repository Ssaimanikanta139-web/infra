terraform {
  backend "azurerm" {
    resource_group_name  = "nivi-rg"
    storage_account_name = "saiterraform"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "con"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "Dev.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}