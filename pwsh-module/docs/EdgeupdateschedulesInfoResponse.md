# EdgeupdateschedulesInfoResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HasLocalTimeZone** | **Boolean** |  | [optional] 
**HasNoLocalTimeZone** | **Boolean** |  | [optional] 
**MinAgentVersion** | **String** |  | [optional] 
**OutdatedCount** | **Int32** |  | [optional] 
**UpToDateCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgeupdateschedulesInfoResponse = Initialize-PSOpenAPIToolsEdgeupdateschedulesInfoResponse  -HasLocalTimeZone null `
 -HasNoLocalTimeZone null `
 -MinAgentVersion null `
 -OutdatedCount null `
 -UpToDateCount null
```

- Convert the resource to JSON
```powershell
$EdgeupdateschedulesInfoResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

