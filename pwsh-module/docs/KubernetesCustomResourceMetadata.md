# KubernetesCustomResourceMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiVersion** | **String** |  | [optional] 
**Kind** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Plural** | **String** |  | [optional] 
**Scope** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesCustomResourceMetadata = Initialize-PSOpenAPIToolsKubernetesCustomResourceMetadata  -ApiVersion null `
 -Kind null `
 -Name null `
 -Plural null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$KubernetesCustomResourceMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

