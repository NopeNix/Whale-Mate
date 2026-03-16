# StacksSwarmStackFromGitRepositoryPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdditionalFiles** | **String[]** | Applicable when deploying with multiple stack files | [optional] 
**AutoUpdate** | [**PortainerAutoUpdateSettings**](PortainerAutoUpdateSettings.md) | Optional GitOps update configuration | [optional] 
**ComposeFile** | **String** | Path to the Stack file inside the Git repository | [optional] [default to "docker-compose.yml"]
**Env** | [**PortainerPair[]**](PortainerPair.md) | A list of environment variables used during stack deployment | [optional] 
**FilesystemPath** | **String** | Network filesystem path | [optional] 
**FromAppTemplate** | **Boolean** | Whether the stack is from a app template | [optional] 
**Name** | **String** | Name of the stack | 
**Registries** | **Int32[]** | List of Registries to use for this stack | [optional] 
**RepositoryAuthentication** | **Boolean** | Use basic authentication to clone the Git repository | [optional] 
**RepositoryAuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) | RepositoryAuthorizationType is the authorization type to use | [optional] 
**RepositoryGitCredentialID** | **Int32** | GitCredentialID used to identify the bound git credential. Required when RepositoryAuthentication is true and RepositoryUsername/RepositoryPassword are not provided | [optional] 
**RepositoryPassword** | **String** | Password used in basic authentication. Required when RepositoryAuthentication is true and RepositoryGitCredentialID is 0 | [optional] 
**RepositoryReferenceName** | **String** | Reference name of a Git repository hosting the Stack file | [optional] 
**RepositoryURL** | **String** | URL of a Git repository hosting the Stack file | 
**RepositoryUsername** | **String** | Username used in basic authentication. Required when RepositoryAuthentication is true and RepositoryGitCredentialID is 0 | [optional] 
**SupportRelativePath** | **Boolean** | Whether the stack suppors relative path volume | [optional] 
**SwarmID** | **String** | Swarm cluster identifier | 
**TLSSkipVerify** | **Boolean** | TLSSkipVerify skips SSL verification when cloning the Git repository | [optional] 

## Examples

- Prepare the resource
```powershell
$StacksSwarmStackFromGitRepositoryPayload = Initialize-PSOpenAPIToolsStacksSwarmStackFromGitRepositoryPayload  -AdditionalFiles [[nz.compose.yml,  uat.compose.yml]] `
 -AutoUpdate null `
 -ComposeFile docker-compose.yml `
 -Env null `
 -FilesystemPath /tmp `
 -FromAppTemplate false `
 -Name myStack `
 -Registries null `
 -RepositoryAuthentication true `
 -RepositoryAuthorizationType null `
 -RepositoryGitCredentialID 0 `
 -RepositoryPassword myGitPassword `
 -RepositoryReferenceName refs/heads/master `
 -RepositoryURL https://github.com/openfaas/faas `
 -RepositoryUsername myGitUsername `
 -SupportRelativePath false `
 -SwarmID jpofkc0i9uo9wtx1zesuk649w `
 -TLSSkipVerify false
```

- Convert the resource to JSON
```powershell
$StacksSwarmStackFromGitRepositoryPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

