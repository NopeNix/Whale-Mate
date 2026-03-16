# PortainereeAuthActivityLog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Context** | [**PortainerAuthenticationMethod**](PortainerAuthenticationMethod.md) |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Origin** | **String** |  | [optional] 
**Timestamp** | **Int32** |  | [optional] 
**Type** | [**PortainereeAuthenticationActivityType**](PortainereeAuthenticationActivityType.md) |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeAuthActivityLog = Initialize-PSOpenAPIToolsPortainereeAuthActivityLog  -Context null `
 -Id null `
 -Origin null `
 -Timestamp null `
 -Type null `
 -Username null
```

- Convert the resource to JSON
```powershell
$PortainereeAuthActivityLog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

