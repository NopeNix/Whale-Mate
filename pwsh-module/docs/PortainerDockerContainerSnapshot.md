# PortainerDockerContainerSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Command** | **String** |  | [optional] 
**Created** | **Int32** |  | [optional] 
**Env** | **String[]** | EE-5240 | [optional] 
**HostConfig** | [**PortainerDockerContainerSnapshotHostConfig**](PortainerDockerContainerSnapshotHostConfig.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Image** | **String** |  | [optional] 
**ImageID** | **String** |  | [optional] 
**ImageManifestDescriptor** | [**V1Descriptor**](V1Descriptor.md) |  | [optional] 
**Labels** | **System.Collections.Hashtable** |  | [optional] 
**Mounts** | [**ContainerMountPoint[]**](ContainerMountPoint.md) |  | [optional] 
**Names** | **String[]** |  | [optional] 
**NetworkSettings** | [**ContainerNetworkSettingsSummary**](ContainerNetworkSettingsSummary.md) |  | [optional] 
**Ports** | [**ContainerPort[]**](ContainerPort.md) |  | [optional] 
**SizeRootFs** | **Int32** |  | [optional] 
**SizeRw** | **Int32** |  | [optional] 
**State** | [**ContainerContainerState**](ContainerContainerState.md) |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerDockerContainerSnapshot = Initialize-PSOpenAPIToolsPortainerDockerContainerSnapshot  -Command null `
 -Created null `
 -Env null `
 -HostConfig null `
 -Id null `
 -Image null `
 -ImageID null `
 -ImageManifestDescriptor null `
 -Labels null `
 -Mounts null `
 -Names null `
 -NetworkSettings null `
 -Ports null `
 -SizeRootFs null `
 -SizeRw null `
 -State null `
 -Status null
```

- Convert the resource to JSON
```powershell
$PortainerDockerContainerSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

