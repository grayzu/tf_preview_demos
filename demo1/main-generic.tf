# Provision a Lab Service Account and a Lab that are in public preview
resource "azapi_resource" "demo-account" {
  type      = "Microsoft.LabServices/labaccounts@2018-10-15"
  name      = "DemoLabAccount"
  parent_id = azurerm_resource_group.demo.id

  body = jsonencode({
    properties = {
      enabledRegionSelection = false
    }
  })
}

resource "azapi_resource" "demo-lab" {
  type      = "Microsoft.LabServices/labaccounts/labs@2018-10-15"
  name      = "qs101Lab"
  parent_id = azapi_resource.demo-account.id

  body = jsonencode({
    properties = {
      maxUsersInLab  = 10
      userAccessMode = "Restricted"
    }
  })

  response_export_values = ["properties.invitationCode"]
}

# Output the invitation code that users can use to join a lab.
# Use JsonDecode function to decode the output from the AzAPI resource.
output "Lab_Invitation_Code" {
  value = jsondecode(azapi_resource.demo-lab.output).properties.invitationCode
}
