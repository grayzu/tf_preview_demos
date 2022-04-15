# provision a Container Group with properties that are not yet supported by AzureRM

resource "azapi_update_resource" "test" {
  type        = "Microsoft.ContainerRegistry/registries@2021-08-01-preview"
  resource_id = azurerm_container_registry.acr.id

  body = jsonencode({
    properties = {
      anonymousPullEnabled = var.bool_anonymous_pull
    }
  })
}
