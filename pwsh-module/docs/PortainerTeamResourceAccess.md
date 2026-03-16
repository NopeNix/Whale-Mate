# PortainerTeamResourceAccess
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessLevel** | [**PortainerResourceAccessLevel**](PortainerResourceAccessLevel.md) |  | [optional] 
**TeamId** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTeamResourceAccess = Initialize-PSOpenAPIToolsPortainerTeamResourceAccess  -AccessLevel null `
 -TeamId null
```

- Convert the resource to JSON
```powershell
$PortainerTeamResourceAccess | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

