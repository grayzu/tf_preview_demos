# AzAPI provider Demo1

The contents of this directory demostrate the use of the `azapi_resource` Terraform resource to provision a Lab Services account and Lab Services Lab.
_Note: at the time of this demo creation Lab Services was in preview and could not be provisioned using the AzureRM provider._

## Things to  highlight / notice

1. The `response_export_values` property is used in the `azapi_resource.demo-lab` resource to define which return values to expose to terraform. This can be a list of properties.
1. The properties that are output, `properties.invitationCode` in this case, can be accessed from the `output` property of the `azapi_resource`. 
1. To make the output values easier to reference use the Terraform `jsondecode` function.