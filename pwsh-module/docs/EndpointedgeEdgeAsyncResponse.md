# EndpointedgeEdgeAsyncResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommandInterval** | **Int32** |  | [optional] 
**Commands** | [**PortainereeEdgeAsyncCommand[]**](PortainereeEdgeAsyncCommand.md) |  | [optional] 
**EndpointID** | **Int32** |  | [optional] 
**NeedFullSnapshot** | **Boolean** |  | [optional] 
**PingInterval** | **Int32** |  | [optional] 
**SnapshotInterval** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointedgeEdgeAsyncResponse = Initialize-PSOpenAPIToolsEndpointedgeEdgeAsyncResponse  -CommandInterval null `
 -Commands null `
 -EndpointID null `
 -NeedFullSnapshot null `
 -PingInterval null `
 -SnapshotInterval null
```

- Convert the resource to JSON
```powershell
$EndpointedgeEdgeAsyncResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

