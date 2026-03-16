# StacksKubernetesGitDeploymentPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdditionalFiles** | **String[]** |  | [optional] 
**AutoUpdate** | [**PortainerAutoUpdateSettings**](PortainerAutoUpdateSettings.md) |  | [optional] 
**ComposeFormat** | **Boolean** |  | [optional] 
**HelmChartPath** | **String** | Helm-specific fields | [optional] 
**HelmValuesFiles** | **String[]** | Array of paths to values YAML files in Git repo | [optional] 
**ManifestFile** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**RepositoryAuthentication** | **Boolean** |  | [optional] 
**RepositoryAuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**RepositoryGitCredentialID** | **Int32** |  | [optional] 
**RepositoryPassword** | **String** |  | [optional] 
**RepositoryReferenceName** | **String** |  | [optional] 
**RepositoryURL** | **String** |  | [optional] 
**RepositoryUsername** | **String** |  | [optional] 
**StackName** | **String** |  | [optional] 
**TLSSkipVerify** | **Boolean** | TLSSkipVerify skips SSL verification when cloning the Git repository | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksKubernetesGitDeploymentPayload = Initialize-PSOpenAPIToolsStacksKubernetesGitDeploymentPayload  -AdditionalFiles null `
 -AutoUpdate null `
 -ComposeFormat null `
 -HelmChartPath null `
 -HelmValuesFiles null `
 -ManifestFile null `
 -Namespace null `
 -RepositoryAuthentication null `
 -RepositoryAuthorizationType null `
 -RepositoryGitCredentialID null `
 -RepositoryPassword null `
 -RepositoryReferenceName null `
 -RepositoryURL null `
 -RepositoryUsername null `
 -StackName null `
 -TLSSkipVerify false
```

- Convert the resource to JSON
```powershell
$StacksKubernetesGitDeploymentPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

