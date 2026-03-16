# IntstrIntOrString
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IntVal** | **Int32** |  | [optional] 
**StrVal** | **String** |  | [optional] 
**Type** | [**IntstrType**](IntstrType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IntstrIntOrString = Initialize-PSOpenAPIToolsIntstrIntOrString  -IntVal null `
 -StrVal null `
 -Type null
```

- Convert the resource to JSON
```powershell
$IntstrIntOrString | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

