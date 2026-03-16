# PortainerEdgeJob
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **Int32** |  | [optional] 
**CronExpression** | **String** |  | [optional] 
**EdgeGroups** | **Int32[]** |  | [optional] 
**Endpoints** | [**System.Collections.Hashtable**](PortainerEdgeJobEndpointMeta.md) |  | [optional] 
**GroupLogsCollection** | [**System.Collections.Hashtable**](PortainerEdgeJobEndpointMeta.md) | Field used for log collection of Endpoints belonging to EdgeGroups | [optional] 
**Id** | **Int32** | EdgeJob Identifier | [optional] 
**Name** | **String** |  | [optional] 
**Recurring** | **Boolean** |  | [optional] 
**ScriptPath** | **String** |  | [optional] 
**Version** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerEdgeJob = Initialize-PSOpenAPIToolsPortainerEdgeJob  -Created null `
 -CronExpression null `
 -EdgeGroups null `
 -Endpoints null `
 -GroupLogsCollection null `
 -Id 1 `
 -Name null `
 -Recurring null `
 -ScriptPath null `
 -Version null
```

- Convert the resource to JSON
```powershell
$PortainerEdgeJob | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

