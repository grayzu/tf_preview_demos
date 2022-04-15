# AzAPI provider Demo3

The contents of this directory demostrate a more advanced the use of the [migration tool (azapi2azurerm)](https://github.com/Azure/azapi2azurerm/releases) that contains a for_each statement in the HCL resulting in multiple Azure Automation accounts.


## Things to  highlight / notice

1. There is a single `azapi_resource` that contains a for_each statement. The variable that the for_each statement is referencing contains two items.
1. Terraform apply results in two Azure Automation accounts being created.
1. Running  `azapi2azurerm plan` will show that the azapi_resource will be migrated to `azurerm_automation_account` resource.
1. Running `azapi2azurerm migrate` will migrate the azapi_resource to an azurerm resource.
1. The for_each logic will be retained in the HCL after the migration. The state will contain individual instances for each of the automation accounts.