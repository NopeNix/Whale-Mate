# StacksKubernetesManifestURLDeploymentPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ComposeFormat** | **Boolean** |  | [optional] 
**ManifestURL** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**StackName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksKubernetesManifestURLDeploymentPayload = Initialize-PSOpenAPIToolsStacksKubernetesManifestURLDeploymentPayload  -ComposeFormat null `
 -ManifestURL null `
 -Namespace null `
 -StackName null
```

- Convert the resource to JSON
```powershell
$StacksKubernetesManifestURLDeploymentPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

