resource "azurerm_resource_group" "web" {
  name     = "rg-web-bb-TEST-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "sql" {
  name     = "rg-sql-bb-TEST-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}

resource "azurerm_resource_group" "net" {
  name     = "rg-net-bb-TEST-app-${var.env}-${var.prim_loc_short}-01"
  location = var.prim_loc
}


# test comment