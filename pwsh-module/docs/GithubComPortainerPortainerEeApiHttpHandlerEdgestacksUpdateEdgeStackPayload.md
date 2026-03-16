# GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateEdgeStackPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeployerOptions** | [**EdgestacksDeployerOptionsPayload**](EdgestacksDeployerOptionsPayload.md) | Options to control the deployer behaviour | [optional] 
**DeploymentType** | [**PortainerEdgeStackDeploymentType**](PortainerEdgeStackDeploymentType.md) |  | [optional] 
**EdgeGroups** | **Int32[]** |  | [optional] 
**EnvVars** | [**PortainerPair[]**](PortainerPair.md) | Environment variables to inject into the stack | [optional] 
**PrePullImage** | **Boolean** |  | [optional] 
**RePullImage** | **Boolean** | Deprecated(2.36): use RepullImageAndRedeploy instead | [optional] 
**Registries** | **Int32[]** |  | [optional] 
**RepullImageAndRedeploy** | **Boolean** | RepullImageAndRedeploy indicates whether the edge stack is manually forced to redeploy | [optional] 
**RetryDeploy** | **Boolean** |  | [optional] 
**RetryPeriod** | **Int32** | RetryPeriod specifies the duration, in seconds, for which the agent should continue attempting to deploy the stack after a failure | [optional] 
**RollbackTo** | **Int32** | RollbackTo specifies the stack file version to rollback to (only support to rollback to the last version currently) | [optional] 
**StackFileContent** | **String** |  | [optional] 
**StaggerConfig** | [**PortainereeEdgeStaggerConfig**](PortainereeEdgeStaggerConfig.md) | Configuration for stagger updates | [optional] 
**UpdateVersion** | **Boolean** |  | [optional] 
**UseManifestNamespaces** | **Boolean** | Uses the manifest&#39;s namespaces instead of the default one | [optional] 
**Webhook** | **String** | Optional webhook configuration | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateEdgeStackPayload = Initialize-PSOpenAPIToolsGithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateEdgeStackPayload  -DeployerOptions null `
 -DeploymentType null `
 -EdgeGroups null `
 -EnvVars null `
 -PrePullImage null `
 -RePullImage null `
 -Registries null `
 -RepullImageAndRedeploy null `
 -RetryDeploy null `
 -RetryPeriod null `
 -RollbackTo null `
 -StackFileContent null `
 -StaggerConfig null `
 -UpdateVersion null `
 -UseManifestNamespaces null `
 -Webhook c11fdf23-183e-428a-9bb6-16db01032174
```

- Convert the resource to JSON
```powershell
$GithubComPortainerPortainerEeApiHttpHandlerEdgestacksUpdateEdgeStackPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

