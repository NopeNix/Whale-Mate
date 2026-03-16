# PoliciesPolicyStatusBreakdown
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Applied** | **Int32** |  | [optional] 
**Failed** | **Int32** |  | [optional] 
**InProgress** | **Int32** |  | [optional] 
**NotSupported** | **Int32** |  | [optional] 
**Warning** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoliciesPolicyStatusBreakdown = Initialize-PSOpenAPIToolsPoliciesPolicyStatusBreakdown  -Applied null `
 -Failed null `
 -InProgress null `
 -NotSupported null `
 -Warning null
```

- Convert the resource to JSON
```powershell
$PoliciesPolicyStatusBreakdown | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

