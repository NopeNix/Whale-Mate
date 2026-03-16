# UsersGitCredentialResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GitCredential** | [**UsersShadowedGitCredential**](UsersShadowedGitCredential.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UsersGitCredentialResponse = Initialize-PSOpenAPIToolsUsersGitCredentialResponse  -GitCredential null
```

- Convert the resource to JSON
```powershell
$UsersGitCredentialResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

