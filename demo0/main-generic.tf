# This example demostrates how to use the Generic resource to configure
# an Azure resource that has not yet been implemented in the AzureRM provider


resource "azapi_resource" "publicip" {
  type      = "Microsoft.Network/Customipprefixes@2021-05-01"
  name      = "mcgfullrange"
  parent_id = azurerm_resource_group.mcg-pg.id
  location  = "westus2"

  body = jsonencode({
    properties = {
      cidr          = "10.0.0.0/24"
      signedMessage = "Sample Message for WAN"
    }
    zones = ["1", "2"]
  })

  tags = {
    "type" = "playground"
  }
}
