# GittypesGitAuthentication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**GitCredentialID** | **Int32** | Git credentials identifier when the value is not 0 When the value is 0, Username, Password, and Authtype are set without using saved credential This is introduced since 2.15.0 | [optional] 
**Password** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GittypesGitAuthentication = Initialize-PSOpenAPIToolsGittypesGitAuthentication  -AuthorizationType null `
 -GitCredentialID 0 `
 -Password null `
 -Username null
```

- Convert the resource to JSON
```powershell
$GittypesGitAuthentication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

