# UsersUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int32** |  | [optional] 
**Role** | [**PortainerUserRole**](PortainerUserRole.md) | User role (1 for administrator account and 2 for regular account) | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UsersUser = Initialize-PSOpenAPIToolsUsersUser  -Id 1 `
 -Role null `
 -Username bob
```

- Convert the resource to JSON
```powershell
$UsersUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

