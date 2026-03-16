# EndpointedgeEdgeJobResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CollectLogs** | **Boolean** | Whether to collect logs | [optional] 
**CronExpression** | **String** | A cron expression to schedule this job | [optional] 
**Id** | **Int32** | EdgeJob Identifier | [optional] 
**Script** | **String** | Script to run | [optional] 
**Version** | **Int32** | Version of this EdgeJob | [optional] 

## Examples

- Prepare the resource
```powershell
$EndpointedgeEdgeJobResponse = Initialize-PSOpenAPIToolsEndpointedgeEdgeJobResponse  -CollectLogs true `
 -CronExpression * * * * * `
 -Id 2 `
 -Script echo hello `
 -Version 2
```

- Convert the resource to JSON
```powershell
$EndpointedgeEdgeJobResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

