# ModelsK8sConfigMap
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**ConfigurationOwner** | **String** |  | [optional] 
**ConfigurationOwnerId** | **String** |  | [optional] 
**ConfigurationOwners** | [**ModelsK8sConfigurationOwnerResource[]**](ModelsK8sConfigurationOwnerResource.md) |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**VarData** | **System.Collections.Hashtable** |  | [optional] 
**IsUsed** | **Boolean** |  | [optional] 
**Labels** | **System.Collections.Hashtable** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**UID** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sConfigMap = Initialize-PSOpenAPIToolsModelsK8sConfigMap  -Annotations null `
 -ConfigurationOwner null `
 -ConfigurationOwnerId null `
 -ConfigurationOwners null `
 -CreationDate null `
 -VarData null `
 -IsUsed null `
 -Labels null `
 -Name null `
 -Namespace null `
 -UID null
```

- Convert the resource to JSON
```powershell
$ModelsK8sConfigMap | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

