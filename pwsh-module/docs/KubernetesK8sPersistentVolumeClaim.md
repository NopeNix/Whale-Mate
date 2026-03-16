# KubernetesK8sPersistentVolumeClaim
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessModes** | [**V1PersistentVolumeAccessMode[]**](V1PersistentVolumeAccessMode.md) |  | [optional] 
**CreationDate** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Labels** | **System.Collections.Hashtable** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**OwningApplications** | [**KubernetesK8sApplication[]**](KubernetesK8sApplication.md) |  | [optional] 
**Phase** | [**V1PersistentVolumeClaimPhase**](V1PersistentVolumeClaimPhase.md) |  | [optional] 
**ResourcesRequests** | [**System.Collections.Hashtable**](ResourceQuantity.md) |  | [optional] 
**Storage** | **Int32** |  | [optional] 
**StorageClass** | **String** |  | [optional] 
**VolumeMode** | [**V1PersistentVolumeMode**](V1PersistentVolumeMode.md) |  | [optional] 
**VolumeName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KubernetesK8sPersistentVolumeClaim = Initialize-PSOpenAPIToolsKubernetesK8sPersistentVolumeClaim  -AccessModes null `
 -CreationDate null `
 -Id null `
 -Labels null `
 -Name null `
 -Namespace null `
 -OwningApplications null `
 -Phase null `
 -ResourcesRequests null `
 -Storage null `
 -StorageClass null `
 -VolumeMode null `
 -VolumeName null
```

- Convert the resource to JSON
```powershell
$KubernetesK8sPersistentVolumeClaim | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

