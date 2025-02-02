resource "azurerm_resource_group" "this" {
<<<<<<< HEAD
  name     = "rg-123-${var.env}-${var.location_short}-01"
=======
  name     = "rg-e2e-${var.env}-${var.location_short}-01"
>>>>>>> 9204f3c (end-to-end testing)
  location = var.location
}

# 123