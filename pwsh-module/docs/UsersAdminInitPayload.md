# UsersAdminInitPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** | Password for the admin user | 
**Username** | **String** | Username for the admin user | 

## Examples

- Prepare the resource
```powershell
$UsersAdminInitPayload = Initialize-PSOpenAPIToolsUsersAdminInitPayload  -Password admin-password `
 -Username admin
```

- Convert the resource to JSON
```powershell
$UsersAdminInitPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

