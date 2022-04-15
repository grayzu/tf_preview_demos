resource "azurerm_resource_group" "migrate_demo" {
  name     = "rg-demo3-pg"
  location = "westus2"

  tags = {
    type = "playground"
  }
}

