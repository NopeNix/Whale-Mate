# GittypesRepoConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Authentication** | [**GittypesGitAuthentication**](GittypesGitAuthentication.md) | Git credentials | [optional] 
**ConfigFilePath** | **String** | Path to where the config file is in this url/refName | [optional] 
**ConfigHash** | **String** | Repository hash | [optional] 
**ReferenceName** | **String** | The reference name | [optional] 
**TLSSkipVerify** | **Boolean** | TLSSkipVerify skips SSL verification when cloning the Git repository | [optional] 
**URL** | **String** | The repo url | [optional] 

## Examples

- Prepare the resource
```powershell
$GittypesRepoConfig = Initialize-PSOpenAPIToolsGittypesRepoConfig  -Authentication null `
 -ConfigFilePath docker-compose.yml `
 -ConfigHash bc4c183d756879ea4d173315338110b31004b8e0 `
 -ReferenceName refs/heads/branch_name `
 -TLSSkipVerify false `
 -URL https://github.com/portainer/portainer.git
```

- Convert the resource to JSON
```powershell
$GittypesRepoConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

