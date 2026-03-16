# UsersUserGitCredentialCreatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | 
**Name** | **String** |  | 
**Password** | **String** |  | 
**Username** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$UsersUserGitCredentialCreatePayload = Initialize-PSOpenAPIToolsUsersUserGitCredentialCreatePayload  -AuthorizationType null `
 -Name my-credential `
 -Password null `
 -Username null
```

- Convert the resource to JSON
```powershell
$UsersUserGitCredentialCreatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

