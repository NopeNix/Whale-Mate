# PoliciesNewGroupInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EnvironmentCount** | **Int32** |  | [optional] 
**EnvironmentGroupId** | **Int32** |  | [optional] 
**EnvironmentGroupName** | **String** |  | [optional] 
**SupportedEnvironments** | **Int32** |  | [optional] 
**UnsupportedEnvironments** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoliciesNewGroupInfo = Initialize-PSOpenAPIToolsPoliciesNewGroupInfo  -EnvironmentCount null `
 -EnvironmentGroupId null `
 -EnvironmentGroupName null `
 -SupportedEnvironments null `
 -UnsupportedEnvironments null
```

- Convert the resource to JSON
```powershell
$PoliciesNewGroupInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

