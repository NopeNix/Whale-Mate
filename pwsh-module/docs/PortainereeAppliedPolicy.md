# PortainereeAppliedPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PolicyID** | **Int32** |  | [optional] 
**PolicyName** | **String** |  | [optional] 
**PolicyStatus** | [**PortainereePolicyStatus**](PortainereePolicyStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeAppliedPolicy = Initialize-PSOpenAPIToolsPortainereeAppliedPolicy  -PolicyID null `
 -PolicyName null `
 -PolicyStatus null
```

- Convert the resource to JSON
```powershell
$PortainereeAppliedPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

