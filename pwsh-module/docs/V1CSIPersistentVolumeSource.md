# V1CSIPersistentVolumeSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ControllerExpandSecretRef** | [**V1SecretReference**](V1SecretReference.md) | controllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed. +optional | [optional] 
**ControllerPublishSecretRef** | [**V1SecretReference**](V1SecretReference.md) | controllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed. +optional | [optional] 
**Driver** | **String** | driver is the name of the driver to use for this volume. Required. | [optional] 
**FsType** | **String** | fsType to mount. Must be a filesystem type supported by the host operating system. Ex. &quot;&quot;ext4&quot;&quot;, &quot;&quot;xfs&quot;&quot;, &quot;&quot;ntfs&quot;&quot;. +optional | [optional] 
**NodeExpandSecretRef** | [**V1SecretReference**](V1SecretReference.md) | nodeExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeExpandVolume call. This field is optional, may be omitted if no secret is required. If the secret object contains more than one secret, all secrets are passed. +optional | [optional] 
**NodePublishSecretRef** | [**V1SecretReference**](V1SecretReference.md) | nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed. +optional | [optional] 
**NodeStageSecretRef** | [**V1SecretReference**](V1SecretReference.md) | nodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed. +optional | [optional] 
**ReadOnly** | **Boolean** | readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write). +optional | [optional] 
**VolumeAttributes** | **System.Collections.Hashtable** | volumeAttributes of the volume to publish. +optional | [optional] 
**VolumeHandle** | **String** | volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1CSIPersistentVolumeSource = Initialize-PSOpenAPIToolsV1CSIPersistentVolumeSource  -ControllerExpandSecretRef null `
 -ControllerPublishSecretRef null `
 -Driver null `
 -FsType null `
 -NodeExpandSecretRef null `
 -NodePublishSecretRef null `
 -NodeStageSecretRef null `
 -ReadOnly null `
 -VolumeAttributes null `
 -VolumeHandle null
```

- Convert the resource to JSON
```powershell
$V1CSIPersistentVolumeSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

