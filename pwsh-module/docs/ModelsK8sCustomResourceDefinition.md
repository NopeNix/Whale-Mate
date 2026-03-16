# ModelsK8sCustomResourceDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreationDate** | **String** |  | [optional] 
**Group** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**ReleaseName** | **String** |  | [optional] 
**ReleaseNamespace** | **String** |  | [optional] 
**ReleaseVersion** | **String** |  | [optional] 
**Scope** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sCustomResourceDefinition = Initialize-PSOpenAPIToolsModelsK8sCustomResourceDefinition  -CreationDate null `
 -Group null `
 -Name null `
 -ReleaseName null `
 -ReleaseNamespace null `
 -ReleaseVersion null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$ModelsK8sCustomResourceDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

