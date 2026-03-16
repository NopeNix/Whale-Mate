# GitopsRepositoryFilePreviewPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TLSSkipVerify** | **Boolean** | TLSSkipVerify skips SSL verification when cloning the Git repository | [optional] 
**AuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**GitCredentialID** | **Int32** |  | [optional] 
**Password** | **String** |  | [optional] 
**Reference** | **String** |  | [optional] 
**Repository** | **String** |  | 
**TargetFile** | **String** | Path to file whose content will be read | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GitopsRepositoryFilePreviewPayload = Initialize-PSOpenAPIToolsGitopsRepositoryFilePreviewPayload  -TLSSkipVerify false `
 -AuthorizationType null `
 -GitCredentialID 0 `
 -Password myGitPassword `
 -Reference refs/heads/master `
 -Repository https://github.com/openfaas/faas `
 -TargetFile docker-compose.yml `
 -Username myGitUsername
```

- Convert the resource to JSON
```powershell
$GitopsRepositoryFilePreviewPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

