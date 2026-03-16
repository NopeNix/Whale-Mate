# StacksComposeStackFromFileContentPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Env** | [**PortainerPair[]**](PortainerPair.md) | A list of environment variables used during stack deployment | [optional] 
**FromAppTemplate** | **Boolean** | Whether the stack is from a app template | [optional] 
**Name** | **String** | Name of the stack | 
**Registries** | **Int32[]** | List of Registries to use for this stack | [optional] 
**StackFileContent** | **String** | Content of the Stack file | 
**Webhook** | **String** | A UUID to identify a webhook. The stack will be force updated and pull the latest image when the webhook was invoked. | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksComposeStackFromFileContentPayload = Initialize-PSOpenAPIToolsStacksComposeStackFromFileContentPayload  -Env null `
 -FromAppTemplate false `
 -Name myStack `
 -Registries null `
 -StackFileContent version: 3
 services:
 web:
 image:nginx `
 -Webhook c11fdf23-183e-428a-9bb6-16db01032174
```

- Convert the resource to JSON
```powershell
$StacksComposeStackFromFileContentPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

