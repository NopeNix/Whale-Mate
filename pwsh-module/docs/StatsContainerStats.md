# StatsContainerStats
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Healthy** | **Int32** |  | [optional] 
**Running** | **Int32** |  | [optional] 
**Stopped** | **Int32** |  | [optional] 
**Total** | **Int32** |  | [optional] 
**Unhealthy** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StatsContainerStats = Initialize-PSOpenAPIToolsStatsContainerStats  -Healthy null `
 -Running null `
 -Stopped null `
 -Total null `
 -Unhealthy null
```

- Convert the resource to JSON
```powershell
$StatsContainerStats | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

