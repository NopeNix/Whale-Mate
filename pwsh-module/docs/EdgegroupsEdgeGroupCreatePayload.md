# EdgegroupsEdgeGroupCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dynamic** | **Boolean** |  | [optional] 
**Endpoints** | **Int32[]** |  | [optional] 
**Name** | **String** |  | [optional] 
**PartialMatch** | **Boolean** |  | [optional] 
**TagIDs** | **Int32[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgegroupsEdgeGroupCreatePayload = Initialize-PSOpenAPIToolsEdgegroupsEdgeGroupCreatePayload  -Dynamic null `
 -Endpoints null `
 -Name null `
 -PartialMatch null `
 -TagIDs null
```

- Convert the resource to JSON
```powershell
$EdgegroupsEdgeGroupCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

