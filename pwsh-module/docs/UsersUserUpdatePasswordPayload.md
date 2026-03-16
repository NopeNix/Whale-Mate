# UsersUserUpdatePasswordPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewPassword** | **String** | New Password | 
**Password** | **String** | Current Password | 

## Examples

- Prepare the resource
```powershell
$UsersUserUpdatePasswordPayload = Initialize-PSOpenAPIToolsUsersUserUpdatePasswordPayload  -NewPassword new_passwd `
 -Password passwd
```

- Convert the resource to JSON
```powershell
$UsersUserUpdatePasswordPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

