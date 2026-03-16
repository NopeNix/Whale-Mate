# EdgejobsTaskContainer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointId** | **Int32** |  | [optional] 
**EndpointName** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**LogsStatus** | [**PortainerEdgeJobLogsStatus**](PortainerEdgeJobLogsStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgejobsTaskContainer = Initialize-PSOpenAPIToolsEdgejobsTaskContainer  -EndpointId null `
 -EndpointName null `
 -Id null `
 -LogsStatus null
```

- Convert the resource to JSON
```powershell
$EdgejobsTaskContainer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

