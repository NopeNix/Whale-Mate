# GitopsRepositoryFileSearchPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TLSSkipVerify** | **Boolean** | TLSSkipVerify skips SSL verification when cloning the Git repository | [optional] 
**AuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**CreatedFromCustomTemplateID** | **Int32** |  | [optional] 
**DirOnly** | **Boolean** | DirOnly List directories only | [optional] 
**GitCredentialID** | **Int32** |  | [optional] 
**Include** | **String** | Allow to provide specific file extension as the search result. If empty, the file extensions yml,yaml,hcl,json will be set by default | [optional] 
**Keyword** | **String** | Partial or completed file name. If empty, all filenames with included extensions will be returned | [optional] 
**Password** | **String** |  | [optional] 
**Reference** | **String** | Specific Git repository reference. If empty, the reference ref/heads/main will be set by default | [optional] 
**Repository** | **String** |  | 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GitopsRepositoryFileSearchPayload = Initialize-PSOpenAPIToolsGitopsRepositoryFileSearchPayload  -TLSSkipVerify false `
 -AuthorizationType null `
 -CreatedFromCustomTemplateID null `
 -DirOnly false `
 -GitCredentialID null `
 -Include json,yml `
 -Keyword docker-compose `
 -Password null `
 -Reference refs/heads/develop `
 -Repository null `
 -Username null
```

- Convert the resource to JSON
```powershell
$GitopsRepositoryFileSearchPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

