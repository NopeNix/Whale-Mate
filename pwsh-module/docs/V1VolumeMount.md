# V1VolumeMount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MountPath** | **String** | Path within the container at which the volume should be mounted.  Must not contain &#39;:&#39;. | [optional] 
**MountPropagation** | [**V1MountPropagationMode**](V1MountPropagationMode.md) | mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10. When RecursiveReadOnly is set to IfPossible or to Enabled, MountPropagation must be None or unspecified (which defaults to None). +optional | [optional] 
**Name** | **String** | This must match the Name of a Volume. | [optional] 
**ReadOnly** | **Boolean** | Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false. +optional | [optional] 
**RecursiveReadOnly** | [**V1RecursiveReadOnlyMode**](V1RecursiveReadOnlyMode.md) | RecursiveReadOnly specifies whether read-only mounts should be handled recursively.  If ReadOnly is false, this field has no meaning and must be unspecified.  If ReadOnly is true, and this field is set to Disabled, the mount is not made recursively read-only.  If this field is set to IfPossible, the mount is made recursively read-only, if it is supported by the container runtime.  If this field is set to Enabled, the mount is made recursively read-only if it is supported by the container runtime, otherwise the pod will not be started and an error will be generated to indicate the reason.  If this field is set to IfPossible or Enabled, MountPropagation must be set to None (or be unspecified, which defaults to None).  If this field is not specified, it is treated as an equivalent of Disabled.  +featureGate&#x3D;RecursiveReadOnlyMounts +optional | [optional] 
**SubPath** | **String** | Path within the volume from which the container&#39;s volume should be mounted. Defaults to &quot;&quot;&quot;&quot; (volume&#39;s root). +optional | [optional] 
**SubPathExpr** | **String** | Expanded path within the volume from which the container&#39;s volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container&#39;s environment. Defaults to &quot;&quot;&quot;&quot; (volume&#39;s root). SubPathExpr and SubPath are mutually exclusive. +optional | [optional] 

## Examples

- Prepare the resource
```powershell
$V1VolumeMount = Initialize-PSOpenAPIToolsV1VolumeMount  -MountPath null `
 -MountPropagation null `
 -Name null `
 -ReadOnly null `
 -RecursiveReadOnly null `
 -SubPath null `
 -SubPathExpr null
```

- Convert the resource to JSON
```powershell
$V1VolumeMount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

