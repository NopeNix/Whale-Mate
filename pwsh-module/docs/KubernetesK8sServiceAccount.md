# KubernetesK8sServiceAccount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreationDate** | **String** |  | [optional] 
**IsSystem** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Uid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sServiceAccount = Initialize-PSOpenAPIToolsKubernetesK8sServiceAccount  -CreationDate null `
 -IsSystem null `
 -Name null `
 -Namespace null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sServiceAccount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

