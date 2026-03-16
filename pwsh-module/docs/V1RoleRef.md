# V1RoleRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiGroup** | **String** | APIGroup is the group for the resource being referenced | [optional] 
**Kind** | **String** | Kind is the type of resource being referenced | [optional] 
**Name** | **String** | Name is the name of resource being referenced | [optional] 

## Examples

- Prepare the resource
```powershell
$V1RoleRef = Initialize-PSOpenAPIToolsV1RoleRef  -ApiGroup null `
 -Kind null `
 -Name null
```

- Convert the resource to JSON
```powershell
$V1RoleRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

