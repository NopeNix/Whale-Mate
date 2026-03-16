# ModelsK8sCustomResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreationDate** | **String** |  | [optional] 
**DefinitionName** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sCustomResource = Initialize-PSOpenAPIToolsModelsK8sCustomResource  -CreationDate null `
 -DefinitionName null `
 -Name null `
 -Namespace null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$ModelsK8sCustomResource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

