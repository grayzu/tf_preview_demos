resource "azurerm_resource_group" "demo" {
  name     = "rg-demo2-pg"
  location = "westus2"
}

resource "azurerm_container_registry" "acr" {
  name                = "demoreg007"
  resource_group_name = azurerm_resource_group.demo.name
  location            = azurerm_resource_group.demo.location
  sku                 = "Standard"
}
