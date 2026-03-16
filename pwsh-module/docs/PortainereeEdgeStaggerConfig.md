# PortainereeEdgeStaggerConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceNumber** | **Int32** |  | [optional] 
**DeviceNumberIncrementBy** | **Int32** |  | [optional] 
**DeviceNumberStartFrom** | **Int32** |  | [optional] 
**StaggerOption** | [**PortainereeEdgeStaggerOption**](PortainereeEdgeStaggerOption.md) |  | [optional] 
**StaggerParallelOption** | [**PortainereeEdgeStaggerParallelOption**](PortainereeEdgeStaggerParallelOption.md) |  | [optional] 
**Timeout** | **String** | Timeout unit is minute | [optional] 
**UpdateDelay** | **String** | UpdateDelay unit is minute | [optional] 
**UpdateFailureAction** | [**PortainereeEdgeUpdateFailureAction**](PortainereeEdgeUpdateFailureAction.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEdgeStaggerConfig = Initialize-PSOpenAPIToolsPortainereeEdgeStaggerConfig  -DeviceNumber null `
 -DeviceNumberIncrementBy null `
 -DeviceNumberStartFrom null `
 -StaggerOption null `
 -StaggerParallelOption null `
 -Timeout 5 `
 -UpdateDelay 5 `
 -UpdateFailureAction null
```

- Convert the resource to JSON
```powershell
$PortainereeEdgeStaggerConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

