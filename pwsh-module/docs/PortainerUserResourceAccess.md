# PortainerUserResourceAccess
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessLevel** | [**PortainerResourceAccessLevel**](PortainerResourceAccessLevel.md) |  | [optional] 
**UserId** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerUserResourceAccess = Initialize-PSOpenAPIToolsPortainerUserResourceAccess  -AccessLevel null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$PortainerUserResourceAccess | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

