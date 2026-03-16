# PortainerEdgeJobEndpointMeta
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CollectLogs** | **Boolean** |  | [optional] 
**LogsStatus** | [**PortainerEdgeJobLogsStatus**](PortainerEdgeJobLogsStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerEdgeJobEndpointMeta = Initialize-PSOpenAPIToolsPortainerEdgeJobEndpointMeta  -CollectLogs null `
 -LogsStatus null
```

- Convert the resource to JSON
```powershell
$PortainerEdgeJobEndpointMeta | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

