# GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromGitRepositoryPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlwaysCloneGitRepoForRelativePath** | **Boolean** | Whether the edge stack always clones the git repository for relative path | [optional] 
**AutoUpdate** | [**PortainerAutoUpdateSettings**](PortainerAutoUpdateSettings.md) | Optional GitOps update configuration | [optional] 
**CreatedFromCustomTemplateID** | **Int32** | CreatedFromCustomTemplateID used to determine whether the edge stack is created from a custom template | [optional] 
**DeploymentType** | [**PortainerEdgeStackDeploymentType**](PortainerEdgeStackDeploymentType.md) | Deployment type to deploy this stack Valid values are: 0 - &#39;compose&#39;, 1 - &#39;kubernetes&#39; compose is enabled only for docker environments kubernetes is enabled only for kubernetes environments | [optional] 
**EdgeGroups** | **Int32[]** | List of identifiers of EdgeGroups | 
**EnvVars** | [**PortainerPair[]**](PortainerPair.md) | List of environment variables | [optional] 
**FilePathInRepository** | **String** | Path to the Stack file inside the Git repository | [optional] [default to "docker-compose.yml"]
**FilesystemPath** | **String** | Local filesystem path | [optional] 
**HelmConfig** | [**PortainerHelmConfig**](PortainerHelmConfig.md) | HelmConfig is the configuration for the Helm chart | [optional] 
**Name** | **String** | Name of the stack Max length: 255 Name must only contains lowercase characters, numbers, hyphens, or underscores Name must start with a lowercase character or number Example: stack-name or stack_123 or stackName | 
**PerDeviceConfigsGroupMatchType** | [**PortainerPerDevConfigsFilterType**](PortainerPerDevConfigsFilterType.md) | Per device configs group match type | [optional] 
**PerDeviceConfigsMatchType** | [**PortainerPerDevConfigsFilterType**](PortainerPerDevConfigsFilterType.md) | Per device configs match type | [optional] 
**PerDeviceConfigsPath** | **String** | Per device configs path | [optional] 
**PrePullImage** | **Boolean** | Pre Pull image | [optional] 
**Registries** | **Int32[]** | List of Registries to use for this stack | [optional] 
**RepositoryAuthentication** | **Boolean** | Use basic authentication to clone the Git repository | [optional] 
**RepositoryAuthorizationType** | [**GittypesGitCredentialAuthType**](GittypesGitCredentialAuthType.md) | RepositoryAuthorizationType is the authorization type to use | [optional] 
**RepositoryGitCredentialID** | **Int32** | GitCredentialID used to identify the binded git credential | [optional] 
**RepositoryPassword** | **String** | Password used in basic authentication. Required when RepositoryAuthentication is true. | [optional] 
**RepositoryReferenceName** | **String** | Reference name of a Git repository hosting the Stack file | [optional] 
**RepositoryURL** | **String** | URL of a Git repository hosting the Stack file | 
**RepositoryUsername** | **String** | Username used in basic authentication. Required when RepositoryAuthentication is true. | [optional] 
**RetryDeploy** | **Boolean** | Retry deploy | [optional] 
**RetryPeriod** | **Int32** | Retry period specifies the duration, in seconds, for which the agent should continue attempting to deploy the stack after a failure | [optional] 
**StaggerConfig** | [**PortainereeEdgeStaggerConfig**](PortainereeEdgeStaggerConfig.md) | Configuration for stagger updates | [optional] 
**SupportPerDeviceConfigs** | **Boolean** | Whether the edge stack supports per device configs | [optional] 
**SupportRelativePath** | **Boolean** | Whether the stack supports relative path volume | [optional] 
**TLSSkipVerify** | **Boolean** | TLSSkipVerify skips SSL verification when cloning the Git repository | [optional] 
**UseManifestNamespaces** | **Boolean** | Uses the manifest&#39;s namespaces instead of the default one | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromGitRepositoryPayload = Initialize-PSOpenAPIToolsGithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromGitRepositoryPayload  -AlwaysCloneGitRepoForRelativePath false `
 -AutoUpdate null `
 -CreatedFromCustomTemplateID null `
 -DeploymentType null `
 -EdgeGroups [1] `
 -EnvVars null `
 -FilePathInRepository docker-compose.yml `
 -FilesystemPath /mnt `
 -HelmConfig null `
 -Name stack-name `
 -PerDeviceConfigsGroupMatchType null `
 -PerDeviceConfigsMatchType null `
 -PerDeviceConfigsPath configs `
 -PrePullImage false `
 -Registries null `
 -RepositoryAuthentication true `
 -RepositoryAuthorizationType null `
 -RepositoryGitCredentialID 0 `
 -RepositoryPassword myGitPassword `
 -RepositoryReferenceName refs/heads/master `
 -RepositoryURL https://github.com/openfaas/faas `
 -RepositoryUsername myGitUsername `
 -RetryDeploy false `
 -RetryPeriod null `
 -StaggerConfig null `
 -SupportPerDeviceConfigs false `
 -SupportRelativePath false `
 -TLSSkipVerify false `
 -UseManifestNamespaces null
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromGitRepositoryPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

