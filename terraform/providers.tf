terraform {
  backend "azurerm" {
    storage_account_name  = "sagregmgmtuks01"
    container_name        = var.container_name
    key                   = "multilayer-webapp.tfstate"
  }
}