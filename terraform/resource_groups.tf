locals {
  pipeline_testing = "Version1"
}

resource "azurerm_resource_group" "web" {
  name     = "rg-web-${local.pipeline_testing}-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "sql" {
  name     = "rg-sql-${local.pipeline_testing}-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "net" {
  name     = "rg-net-${local.pipeline_testing}-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}