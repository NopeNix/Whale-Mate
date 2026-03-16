# PoliciesPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **String** |  | [optional] 
**EnvironmentGroups** | **Int32[]** |  | [optional] 
**EnvironmentType** | **String** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**StatusBreakdown** | [**PoliciesPolicyStatusBreakdown**](PoliciesPolicyStatusBreakdown.md) | StatusBreakdown is computed on-demand and returned in API responses. It is not persisted to the database. | [optional] 
**Type** | [**PoliciesPolicyType**](PoliciesPolicyType.md) |  | [optional] 
**UpdatedAt** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoliciesPolicy = Initialize-PSOpenAPIToolsPoliciesPolicy  -CreatedAt null `
 -EnvironmentGroups null `
 -EnvironmentType null `
 -Id null `
 -Name null `
 -StatusBreakdown null `
 -Type null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$PoliciesPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

