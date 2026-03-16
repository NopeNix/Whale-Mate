# EdgeconfigsEdgeConfigCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BaseDir** | **String** |  | [optional] 
**Category** | [**PortainereeEdgeConfigCategory**](PortainereeEdgeConfigCategory.md) |  | [optional] 
**EdgeGroupIDs** | **Int32[]** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgeconfigsEdgeConfigCreatePayload = Initialize-PSOpenAPIToolsEdgeconfigsEdgeConfigCreatePayload  -BaseDir null `
 -Category null `
 -EdgeGroupIDs null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$EdgeconfigsEdgeConfigCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

