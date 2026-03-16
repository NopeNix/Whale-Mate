# PortainereeUserActivityLog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** |  | [optional] 
**Context** | **String** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Payload** | **Int32[]** |  | [optional] 
**Timestamp** | **Int32** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeUserActivityLog = Initialize-PSOpenAPIToolsPortainereeUserActivityLog  -Action null `
 -Context null `
 -Id null `
 -Payload null `
 -Timestamp null `
 -Username null
```

- Convert the resource to JSON
```powershell
$PortainereeUserActivityLog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

