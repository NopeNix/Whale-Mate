# ModelsK8sRoleBinding
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**IsSystem** | **Boolean** |  | [optional] 
**IsUnused** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**ResourceVersion** | **String** |  | [optional] 
**RoleRef** | [**V1RoleRef**](V1RoleRef.md) |  | [optional] 
**Subjects** | [**K8sIoApiRbacV1Subject[]**](K8sIoApiRbacV1Subject.md) |  | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelsK8sRoleBinding = Initialize-PSOpenAPIToolsModelsK8sRoleBinding  -Annotations null `
 -CreationDate null `
 -IsSystem null `
 -IsUnused null `
 -Name null `
 -Namespace null `
 -ResourceVersion null `
 -RoleRef null `
 -Subjects null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$ModelsK8sRoleBinding | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

