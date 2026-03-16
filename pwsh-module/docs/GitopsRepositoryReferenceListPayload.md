# GitopsRepositoryReferenceListPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TLSSkipVerify** | **Boolean** | TLSSkipVerify skips SSL verification when cloning the Git repository | [optional] 
**AuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**CreatedFromCustomTemplateID** | **Int32** |  | [optional] 
**GitCredentialID** | **Int32** |  | [optional] 
**Password** | **String** |  | [optional] 
**Repository** | **String** |  | 
**StackID** | **Int32** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GitopsRepositoryReferenceListPayload = Initialize-PSOpenAPIToolsGitopsRepositoryReferenceListPayload  -TLSSkipVerify false `
 -AuthorizationType null `
 -CreatedFromCustomTemplateID null `
 -GitCredentialID null `
 -Password null `
 -Repository null `
 -StackID null `
 -Username null
```

- Convert the resource to JSON
```powershell
$GitopsRepositoryReferenceListPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

