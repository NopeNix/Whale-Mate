# UseractivityLogsListResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Logs** | [**PortainereeUserActivityLog[]**](PortainereeUserActivityLog.md) |  | [optional] 
**TotalCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UseractivityLogsListResponse = Initialize-PSOpenAPIToolsUseractivityLogsListResponse  -Logs null `
 -TotalCount null
```

- Convert the resource to JSON
```powershell
$UseractivityLogsListResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

