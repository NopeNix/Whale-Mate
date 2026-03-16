# StacksUpdateStackPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Env** | [**PortainerPair[]**](PortainerPair.md) | A list of environment(endpoint) variables used during stack deployment | [optional] 
**Prune** | **Boolean** | Prune services that are no longer referenced (only available for Swarm stacks) | [optional] 
**PullImage** | **Boolean** | Deprecated(2.36): use RepullImageAndRedeploy instead for cleaner responsibility Force a pulling to current image with the original tag though the image is already the latest | [optional] 
**Registries** | **Int32[]** | List of Registries to use for this stack | [optional] 
**RepullImageAndRedeploy** | **Boolean** | RepullImageAndRedeploy indicates whether to force repulling images and redeploying the stack | [optional] 
**RollbackTo** | **Int32** | RollbackTo specifies the stack file version to rollback to (only support to rollback to the last version currently) | [optional] 
**StackFileContent** | **String** | New content of the Stack file | [optional] 
**Webhook** | **String** | A UUID to identify a webhook. The stack will be force updated and pull the latest image when the webhook was invoked. | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksUpdateStackPayload = Initialize-PSOpenAPIToolsStacksUpdateStackPayload  -Env null `
 -Prune true `
 -PullImage false `
 -Registries null `
 -RepullImageAndRedeploy null `
 -RollbackTo null `
 -StackFileContent version: 3
 services:
 web:
 image:nginx `
 -Webhook c11fdf23-183e-428a-9bb6-16db01032174
```

- Convert the resource to JSON
```powershell
$StacksUpdateStackPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

