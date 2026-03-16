# DockerDashboardResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Containers** | [**StatsContainerStats**](StatsContainerStats.md) |  | [optional] 
**Images** | [**DockerImagesCounters**](DockerImagesCounters.md) |  | [optional] 
**Networks** | **Int32** |  | [optional] 
**Services** | **Int32** |  | [optional] 
**Stacks** | **Int32** |  | [optional] 
**Volumes** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DockerDashboardResponse = Initialize-PSOpenAPIToolsDockerDashboardResponse  -Containers null `
 -Images null `
 -Networks null `
 -Services null `
 -Stacks null `
 -Volumes null
```

- Convert the resource to JSON
```powershell
$DockerDashboardResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

