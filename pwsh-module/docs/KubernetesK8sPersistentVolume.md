# KubernetesK8sPersistentVolume
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessModes** | [**V1PersistentVolumeAccessMode[]**](V1PersistentVolumeAccessMode.md) |  | [optional] 
**Annotations** | **System.Collections.Hashtable** |  | [optional] 
**Capacity** | [**System.Collections.Hashtable**](ResourceQuantity.md) |  | [optional] 
**ClaimRef** | [**V1ObjectReference**](V1ObjectReference.md) |  | [optional] 
**Csi** | [**V1CSIPersistentVolumeSource**](V1CSIPersistentVolumeSource.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**PersistentVolumeReclaimPolicy** | [**V1PersistentVolumeReclaimPolicy**](V1PersistentVolumeReclaimPolicy.md) |  | [optional] 
**StorageClassName** | **String** |  | [optional] 
**VolumeMode** | [**V1PersistentVolumeMode**](V1PersistentVolumeMode.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sPersistentVolume = Initialize-PSOpenAPIToolsKubernetesK8sPersistentVolume  -AccessModes null `
 -Annotations null `
 -Capacity null `
 -ClaimRef null `
 -Csi null `
 -Name null `
 -PersistentVolumeReclaimPolicy null `
 -StorageClassName null `
 -VolumeMode null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sPersistentVolume | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

