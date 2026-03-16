# ReleaseValues
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ComputedValues** | **String** |  | [optional] 
**UserSuppliedValues** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReleaseValues = Initialize-PSOpenAPIToolsReleaseValues  -ComputedValues null `
 -UserSuppliedValues null
```

- Convert the resource to JSON
```powershell
$ReleaseValues | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

