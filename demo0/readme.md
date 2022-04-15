# AzAPI provider Demo0

The contents of this directory demostrate the use of the `azapi_resource` Terraform resource to used to provision a Custom IP prefix.
_Note: at the time of this demo creation Custom IP Prefix was in preview and could not be provisioned using the AzureRM provider._

## Things to  highlight / notice

1. The `type` property defines the type of resource that will be provisioned. In this case a custom IP prefix.
1. The `type` also includes an API version which allows you to acces any API.
1. The `parent_id` property defines the container for this resource. In this case, it is a resource group. For other resource types this could be a subscription, management group, other resource, etc.
1. The `body` property contains the payload of the rest request. Using the [AzAPI VS Code extension](https://marketplace.visualstudio.com/items?itemName=azapi-vscode.azapi) makes the authoring experience significantly easier and is highly recommended.
1. Even though the `body` property is just a json string, it is saved to state and changes to this will be clearly shown in the plan. For example, changing the `cidr` block property will show in the plan that that property has changed, not the entire `body` property.