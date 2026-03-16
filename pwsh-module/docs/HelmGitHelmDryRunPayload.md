# HelmGitHelmDryRunPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HelmChartPath** | **String** |  | [optional] 
**HelmValuesFiles** | **String[]** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**RepositoryAuthentication** | **Boolean** |  | [optional] 
**RepositoryAuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**RepositoryGitCredentialID** | **Int32** |  | [optional] 
**RepositoryPassword** | **String** |  | [optional] 
**RepositoryReferenceName** | **String** |  | [optional] 
**RepositoryURL** | **String** |  | [optional] 
**RepositoryUsername** | **String** |  | [optional] 
**TlsSkipVerify** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HelmGitHelmDryRunPayload = Initialize-PSOpenAPIToolsHelmGitHelmDryRunPayload  -HelmChartPath null `
 -HelmValuesFiles null `
 -Name null `
 -Namespace null `
 -RepositoryAuthentication null `
 -RepositoryAuthorizationType null `
 -RepositoryGitCredentialID null `
 -RepositoryPassword null `
 -RepositoryReferenceName null `
 -RepositoryURL null `
 -RepositoryUsername null `
 -TlsSkipVerify null
```

- Convert the resource to JSON
```powershell
$HelmGitHelmDryRunPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

