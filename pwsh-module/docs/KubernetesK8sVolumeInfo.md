# KubernetesK8sVolumeInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PersistentVolume** | [**KubernetesK8sPersistentVolume**](KubernetesK8sPersistentVolume.md) |  | [optional] 
**PersistentVolumeClaim** | [**KubernetesK8sPersistentVolumeClaim**](KubernetesK8sPersistentVolumeClaim.md) |  | [optional] 
**StorageClass** | [**KubernetesK8sStorageClass**](KubernetesK8sStorageClass.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sVolumeInfo = Initialize-PSOpenAPIToolsKubernetesK8sVolumeInfo  -PersistentVolume null `
 -PersistentVolumeClaim null `
 -StorageClass null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sVolumeInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

