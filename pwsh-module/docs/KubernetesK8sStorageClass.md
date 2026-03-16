# KubernetesK8sStorageClass
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowVolumeExpansion** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Provisioner** | **String** |  | [optional] 
**ReclaimPolicy** | [**V1PersistentVolumeReclaimPolicy**](V1PersistentVolumeReclaimPolicy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sStorageClass = Initialize-PSOpenAPIToolsKubernetesK8sStorageClass  -AllowVolumeExpansion null `
 -Name null `
 -Provisioner null `
 -ReclaimPolicy null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sStorageClass | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

