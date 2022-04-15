# Azure Terrafy (aztfy) prvider Demo4

This directory is used to demonstrate [Azure Terrafy (aztfy)](https://github.com/azure/aztfy). You should have a resource group with numerous Azure resources deployed and configured. With aztfy, you will be able to import one or more of these resources to Terraform AzureRM resources.


## Things to  highlight / notice

1. Follow the instructions on the GitHub repo to install aztfy on your system.
1. Ensure that you are logged into Azure and have the subscription where your resource group exists set using the AzureCLI.
1. In this directory run `aztfy -o ./ <name of your resource group>` to begin the import.
1. aztfy will identify all resources that it can and give a default name. You can change as you see fit. 
1. Some resources such as VMs will not be recognized by aztfy since there is not a one to one relationship between Azure resources and Terraform resources. i.e. Microsoft.Compute/VirtualMachines is uses by `azurerm_linux_virtual_machine`, `azurerm_windows_virtual_machine`, and `azurerm_virtual_machine` Terraform resources. You will need to define which should be used for this instance.
1. You can customize the default naming using the -p parameter.