# EdgejobsEdgeJobUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CronExpression** | **String** |  | [optional] 
**EdgeGroups** | **Int32[]** |  | [optional] 
**Endpoints** | **Int32[]** |  | [optional] 
**FileContent** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Recurring** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgejobsEdgeJobUpdatePayload = Initialize-PSOpenAPIToolsEdgejobsEdgeJobUpdatePayload  -CronExpression null `
 -EdgeGroups null `
 -Endpoints null `
 -FileContent null `
 -Name null `
 -Recurring null
```

- Convert the resource to JSON
```powershell
$EdgejobsEdgeJobUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

