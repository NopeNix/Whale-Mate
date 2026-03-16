# StacksStackGitUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Atomic** | **Boolean** | Enable atomic rollback on failure (Helm --atomic flag) | [optional] 
**AutoUpdate** | [**PortainerAutoUpdateSettings**](PortainerAutoUpdateSettings.md) |  | [optional] 
**Env** | [**PortainerPair[]**](PortainerPair.md) |  | [optional] 
**HelmChartPath** | **String** | Helm chart folder path in Git repo (for Helm stacks) | [optional] 
**HelmValuesFiles** | **String[]** | Helm values files paths in Git repo (for Helm stacks) | [optional] 
**Prune** | **Boolean** |  | [optional] 
**Registries** | **Int32[]** |  | [optional] 
**RepositoryAuthentication** | **Boolean** |  | [optional] 
**RepositoryAuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) |  | [optional] 
**RepositoryGitCredentialID** | **Int32** |  | [optional] 
**RepositoryPassword** | **String** |  | [optional] 
**RepositoryReferenceName** | **String** |  | [optional] 
**RepositoryUsername** | **String** |  | [optional] 
**TLSSkipVerify** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksStackGitUpdatePayload = Initialize-PSOpenAPIToolsStacksStackGitUpdatePayload  -Atomic null `
 -AutoUpdate null `
 -Env null `
 -HelmChartPath null `
 -HelmValuesFiles null `
 -Prune null `
 -Registries null `
 -RepositoryAuthentication null `
 -RepositoryAuthorizationType null `
 -RepositoryGitCredentialID null `
 -RepositoryPassword null `
 -RepositoryReferenceName null `
 -RepositoryUsername null `
 -TLSSkipVerify null
```

- Convert the resource to JSON
```powershell
$StacksStackGitUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

