# UsersUserCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** |  | 
**Role** | [**PortainerUserRole**](PortainerUserRole.md) | User role 1 &#x3D; administrator account 2 &#x3D; regular account | 
**Username** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$UsersUserCreatePayload = Initialize-PSOpenAPIToolsUsersUserCreatePayload  -Password cg9Wgky3 `
 -Role null `
 -Username bob
```

- Convert the resource to JSON
```powershell
$UsersUserCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

