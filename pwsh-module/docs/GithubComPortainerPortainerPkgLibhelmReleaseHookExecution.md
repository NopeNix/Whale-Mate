# GithubComPortainerPortainerPkgLibhelmReleaseHookExecution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CompletedAt** | **String** | CompletedAt indicates the date/time this hook was completed. | [optional] 
**Phase** | **String** | Phase indicates whether the hook completed successfully | [optional] 
**StartedAt** | **String** | StartedAt indicates the date/time this hook was started | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerPkgLibhelmReleaseHookExecution = Initialize-PSOpenAPIToolsGithubComPortainerPortainerPkgLibhelmReleaseHookExecution  -CompletedAt null `
 -Phase null `
 -StartedAt null
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerPkgLibhelmReleaseHookExecution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

