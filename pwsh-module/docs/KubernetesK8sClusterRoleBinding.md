# KubernetesK8sClusterRoleBinding
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreationDate** | **String** |  | [optional] 
**IsSystem** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**RoleRef** | [**V1RoleRef**](V1RoleRef.md) |  | [optional] 
**Subjects** | [**K8sIoApiRbacV1Subject[]**](K8sIoApiRbacV1Subject.md) |  | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sClusterRoleBinding = Initialize-PSOpenAPIToolsKubernetesK8sClusterRoleBinding  -CreationDate null `
 -IsSystem null `
 -Name null `
 -Namespace null `
 -RoleRef null `
 -Subjects null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sClusterRoleBinding | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

