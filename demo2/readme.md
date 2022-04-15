# AzAPI provider Demo2

The contents of this directory demostrate the use of the `azapi_update_resource` Terraform resource to provision the `anonymousPullEnabled` property for a container registry that is provisioned using the AzureRM provider. 

Additionally, this demo shows the use of the [migration tool (azapi2azurerm)](https://github.com/Azure/azapi2azurerm/releases) to seemlessly migrate the `anonymousPullEnabled` property into the AzureRM resource.


## Things to  highlight / notice

1. The `azapi_update_resource` allows you to manage new properties that have not yet been added to an AzureRM resource. This will get saved to state and updated when changes are made.
1. The `resource_id` property defines the AzureRM resource that this will augment.
1. The result in Azure will be a single ACR with all of the properties defined by both the AzureRM resource as well as the AzAPI resource.
1. Since the `anonymousPullEnabled` is already supported in AzureRM resource, you can use the migration tool to migrate remove the azapi resource and add this propert to the azurerm resource both in the HCL as well as the state.
1. azapi2azurerm has two primary parameters: plan and migrate. First run plan to show that the property will be migrated, then run migrate to perform the migration.
1. Since the HCL and state will be updated by the migration, use the contents of the backup folder to restore the original HCL.
1. Note that the migration retains the variable value used for the `anonymousPullEnabled` property after the migration.