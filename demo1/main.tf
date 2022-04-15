resource "azurerm_resource_group" "demo" {
  name     = "rg-demo1-pg"
  location = "westus2"

  tags = {
    type = "playground"
  }
}
