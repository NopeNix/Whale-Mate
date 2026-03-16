# UsersUserUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewPassword** | **String** |  | 
**Password** | **String** |  | 
**Role** | [**PortainerUserRole**](PortainerUserRole.md) | User role 1 &#x3D; administrator account 2 &#x3D; regular account 3 &#x3D; edge administrator account | 
**Theme** | [**UsersThemePayload**](UsersThemePayload.md) |  | [optional] 
**UseCache** | **Boolean** |  | 
**Username** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$UsersUserUpdatePayload = Initialize-PSOpenAPIToolsUsersUserUpdatePayload  -NewPassword asfj2emv `
 -Password cg9Wgky3 `
 -Role null `
 -Theme null `
 -UseCache true `
 -Username bob
```

- Convert the resource to JSON
```powershell
$UsersUserUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

