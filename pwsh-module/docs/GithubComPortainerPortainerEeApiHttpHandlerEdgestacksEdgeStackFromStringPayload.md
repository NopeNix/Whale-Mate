# GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromStringPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeploymentType** | [**PortainerEdgeStackDeploymentType**](PortainerEdgeStackDeploymentType.md) | Deployment type to deploy this stack Valid values are: 0 - &#39;compose&#39;, 1 - &#39;kubernetes&#39; compose is enabled only for docker environments kubernetes is enabled only for kubernetes environments | [optional] 
**EdgeGroups** | **Int32[]** | List of identifiers of EdgeGroups | [optional] 
**EnvVars** | [**PortainerPair[]**](PortainerPair.md) | List of environment variables | [optional] 
**Name** | **String** | Name of the stack Max length: 255 Name must only contains lowercase characters, numbers, hyphens, or underscores Name must start with a lowercase character or number Example: stack-name or stack_123 or stackName | 
**PrePullImage** | **Boolean** | Pre Pull image | [optional] 
**Registries** | **Int32[]** | List of Registries to use for this stack | [optional] 
**RetryDeploy** | **Boolean** | Retry deploy | [optional] 
**RetryPeriod** | **Int32** | Retry period specifies the duration, in seconds, for which the agent should continue attempting to deploy the stack after a failure | [optional] 
**StackFileContent** | **String** | Content of the Stack file | 
**StaggerConfig** | [**PortainereeEdgeStaggerConfig**](PortainereeEdgeStaggerConfig.md) | Configuration for stagger updates | [optional] 
**UseManifestNamespaces** | **Boolean** | Uses the manifest&#39;s namespaces instead of the default one | [optional] 
**Webhook** | **String** | Optional webhook configuration | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromStringPayload = Initialize-PSOpenAPIToolsGithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromStringPayload  -DeploymentType null `
 -EdgeGroups [1] `
 -EnvVars null `
 -Name stack-name `
 -PrePullImage false `
 -Registries null `
 -RetryDeploy false `
 -RetryPeriod null `
 -StackFileContent version: 3
 services:
 web:
 image:nginx `
 -StaggerConfig null `
 -UseManifestNamespaces null `
 -Webhook c11fdf23-183e-428a-9bb6-16db01032174
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksEdgeStackFromStringPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

