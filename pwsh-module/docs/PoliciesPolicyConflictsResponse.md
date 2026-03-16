# PoliciesPolicyConflictsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conflicts** | [**PoliciesConflictInfo[]**](PoliciesConflictInfo.md) |  | [optional] 
**NewGroups** | [**PoliciesNewGroupInfo[]**](PoliciesNewGroupInfo.md) |  | [optional] 
**SupportedEnvironments** | **Int32** |  | [optional] 
**TotalEnvironments** | **Int32** |  | [optional] 
**UnsupportedEnvironments** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PoliciesPolicyConflictsResponse = Initialize-PSOpenAPIToolsPoliciesPolicyConflictsResponse  -Conflicts null `
 -NewGroups null `
 -SupportedEnvironments null `
 -TotalEnvironments null `
 -UnsupportedEnvironments null
```

- Convert the resource to JSON
```powershell
$PoliciesPolicyConflictsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

