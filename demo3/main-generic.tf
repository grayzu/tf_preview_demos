resource "azapi_resource" "demo4" {
  for_each = var.accounts

  type      = "Microsoft.Automation/automationAccounts@2020-01-13-preview"
  name      = "demo4${each.value.name}"
  parent_id = azurerm_resource_group.migrate_demo.id

  location = azurerm_resource_group.migrate_demo.location
  identity {
    type = "SystemAssigned"
  }

  body = jsonencode({
    properties = {
      sku = {
        name = each.value.sku
      }
    }
  })
}
