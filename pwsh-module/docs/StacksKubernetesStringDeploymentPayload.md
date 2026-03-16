# StacksKubernetesStringDeploymentPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ComposeFormat** | **Boolean** |  | [optional] 
**FromAppTemplate** | **Boolean** | Whether the stack is from a app template | [optional] 
**Namespace** | **String** |  | [optional] 
**StackFileContent** | **String** |  | [optional] 
**StackName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksKubernetesStringDeploymentPayload = Initialize-PSOpenAPIToolsStacksKubernetesStringDeploymentPayload  -ComposeFormat null `
 -FromAppTemplate false `
 -Namespace null `
 -StackFileContent null `
 -StackName null
```

- Convert the resource to JSON
```powershell
$StacksKubernetesStringDeploymentPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

