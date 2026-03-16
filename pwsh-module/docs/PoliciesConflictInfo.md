# PoliciesConflictInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EnvironmentCount** | **Int32** |  | [optional] 
**EnvironmentGroupId** | **Int32** |  | [optional] 
**EnvironmentGroupName** | **String** |  | [optional] 
**ExistingPolicyId** | **Int32** |  | [optional] 
**ExistingPolicyName** | **String** |  | [optional] 
**SupportedEnvironments** | **Int32** |  | [optional] 
**UnsupportedEnvironments** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoliciesConflictInfo = Initialize-PSOpenAPIToolsPoliciesConflictInfo  -EnvironmentCount null `
 -EnvironmentGroupId null `
 -EnvironmentGroupName null `
 -ExistingPolicyId null `
 -ExistingPolicyName null `
 -SupportedEnvironments null `
 -UnsupportedEnvironments null
```

- Convert the resource to JSON
```powershell
$PoliciesConflictInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

