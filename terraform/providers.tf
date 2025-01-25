terraform {
  backend "azurerm" {
    storage_account_name = "sagregmgmtuks01"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
}