# PortainerDockerSnapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContainerCount** | **Int32** |  | [optional] 
**DiagnosticsData** | [**PortainerDiagnosticsData**](PortainerDiagnosticsData.md) |  | [optional] 
**DockerSnapshotRaw** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**DockerVersion** | **String** |  | [optional] 
**GpuUseAll** | **Boolean** |  | [optional] 
**GpuUseList** | **String[]** |  | [optional] 
**HealthyContainerCount** | **Int32** |  | [optional] 
**ImageCount** | **Int32** |  | [optional] 
**IsPodman** | **Boolean** |  | [optional] 
**NodeCount** | **Int32** |  | [optional] 
**PerformanceMetrics** | [**PortainerPerformanceMetrics**](PortainerPerformanceMetrics.md) |  | [optional] 
**RunningContainerCount** | **Int32** |  | [optional] 
**ServiceCount** | **Int32** |  | [optional] 
**StackCount** | **Int32** |  | [optional] 
**StoppedContainerCount** | **Int32** |  | [optional] 
**Swarm** | **Boolean** |  | [optional] 
**Time** | **Int32** |  | [optional] 
**TotalCPU** | **Int32** |  | [optional] 
**TotalMemory** | **Int32** |  | [optional] 
**UnhealthyContainerCount** | **Int32** |  | [optional] 
**VolumeCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerDockerSnapshot = Initialize-PSOpenAPIToolsPortainerDockerSnapshot  -ContainerCount null `
 -DiagnosticsData null `
 -DockerSnapshotRaw null `
 -DockerVersion null `
 -GpuUseAll null `
 -GpuUseList null `
 -HealthyContainerCount null `
 -ImageCount null `
 -IsPodman null `
 -NodeCount null `
 -PerformanceMetrics null `
 -RunningContainerCount null `
 -ServiceCount null `
 -StackCount null `
 -StoppedContainerCount null `
 -Swarm null `
 -Time null `
 -TotalCPU null `
 -TotalMemory null `
 -UnhealthyContainerCount null `
 -VolumeCount null
```

- Convert the resource to JSON
```powershell
$PortainerDockerSnapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

