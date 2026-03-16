# KubernetesMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**Labels** | **System.Collections.Hashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesMetadata = Initialize-PSOpenAPIToolsKubernetesMetadata  -Annotations null `
 -Labels null
```

- Convert the resource to JSON
```powershell
$KubernetesMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

