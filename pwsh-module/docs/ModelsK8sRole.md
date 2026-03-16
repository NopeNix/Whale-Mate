# ModelsK8sRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**IsSystem** | **Boolean** | isSystem is true if prefixed with &quot;&quot;system:&quot;&quot; or exists in the kube-system namespace or is one of the portainer roles | [optional] 
**IsUnused** | **Boolean** | Unused is true if the role is not bound to any subject. | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**ResourceVersion** | **String** |  | [optional] 
**Rules** | [**V1PolicyRule[]**](V1PolicyRule.md) |  | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sRole = Initialize-PSOpenAPIToolsModelsK8sRole  -Annotations null `
 -CreationDate null `
 -IsSystem null `
 -IsUnused null `
 -Name null `
 -Namespace null `
 -ResourceVersion null `
 -Rules null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$ModelsK8sRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

