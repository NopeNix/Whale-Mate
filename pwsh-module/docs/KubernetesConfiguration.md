# KubernetesConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfigurationOwner** | **String** |  | [optional] 
**VarData** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 
**Kind** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesConfiguration = Initialize-PSOpenAPIToolsKubernetesConfiguration  -ConfigurationOwner null `
 -VarData null `
 -Kind null
```

- Convert the resource to JSON
```powershell
$KubernetesConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

