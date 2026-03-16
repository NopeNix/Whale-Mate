# PortainereeEdgeStack
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlwaysCloneGitRepoForRelativePath** | **Boolean** | Whether the edge stack always clones the git repository for relative path | [optional] 
**AutoUpdate** | [**PortainerAutoUpdateSettings**](PortainerAutoUpdateSettings.md) | The GitOps update settings of a git stack | [optional] 
**CreatedBy** | **String** | The username which created this stack | [optional] 
**CreatedByUserId** | **String** | The username id which created this stack | [optional] 
**CreationDate** | **Int32** | StatusArray    map[EndpointID][]EdgeStackStatus &#x60;json:&quot;&quot;StatusArray&quot;&quot;&#x60; | [optional] 
**DeployerOptions** | [**PortainereeEdgeStackDeployerOptions**](PortainereeEdgeStackDeployerOptions.md) | Options to control the Deployer behaviour | [optional] 
**DeploymentType** | [**PortainerEdgeStackDeploymentType**](PortainerEdgeStackDeploymentType.md) |  | [optional] 
**EdgeGroups** | **Int32[]** |  | [optional] 
**EdgeUpdateID** | **Int32** | EdgeUpdateID represents the parent update ID, will be zero if this stack is not part of an update | [optional] 
**EntryPoint** | **String** |  | [optional] 
**EnvVars** | [**PortainerPair[]**](PortainerPair.md) | EnvVars is a list of environment variables to inject into the stack | [optional] 
**FilesystemPath** | **String** | Local filesystem path | [optional] 
**GitConfig** | [**GittypesRepoConfig**](GittypesRepoConfig.md) | The git configuration of a git stack | [optional] 
**HelmConfig** | [**PortainerHelmConfig**](PortainerHelmConfig.md) | HelmConfig is the configuration for a Helm based deployment of an edge stack (Helm Chart) | [optional] 
**Id** | **Int32** | EdgeStack Identifier | [optional] 
**ManifestPath** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**NumDeployments** | **Int32** |  | [optional] 
**PerDeviceConfigsGroupMatchType** | [**PortainerPerDevConfigsFilterType**](PortainerPerDevConfigsFilterType.md) | Per device configs group match type | [optional] 
**PerDeviceConfigsMatchType** | [**PortainerPerDevConfigsFilterType**](PortainerPerDevConfigsFilterType.md) | Per device configs match type | [optional] 
**PerDeviceConfigsPath** | **String** | Per device configs path | [optional] 
**PrePullImage** | **Boolean** | Pre Pull Image | [optional] 
**PreviousDeploymentInfo** | [**PortainerStackDeploymentInfo**](PortainerStackDeploymentInfo.md) | PreviousDeploymentInfo represents the previous deployment info of the stack | [optional] 
**ProjectPath** | **String** |  | [optional] 
**RePullImage** | **Boolean** | Deprecated(2.36): keep it for backward compatibility. To remove in future versions (2.44+) Re-Pull Image | [optional] 
**Registries** | **Int32[]** |  | [optional] 
**RetryDeploy** | **Boolean** | Retry deploy | [optional] 
**RetryPeriod** | **Int32** | RetryPeriod specifies the duration, in seconds, for which the agent should continue attempting to deploy the stack after a failure | [optional] 
**ScheduledTime** | **String** | Schedule represents the schedule of the Edge stack (optional, format - &#39;YYYY-MM-DD HH:mm:ss&#39;) | [optional] 
**StackFileVersion** | **Int32** | StackFileVersion represents the version of the stack file, such yaml, hcl, manifest file | [optional] 
**StaggerConfig** | [**PortainereeEdgeStaggerConfig**](PortainereeEdgeStaggerConfig.md) | StaggerConfig is the configuration for staggered update | [optional] 
**Status** | [**System.Collections.Hashtable**](PortainerEdgeStackStatus.md) |  | [optional] 
**SupportPerDeviceConfigs** | **Boolean** | Whether the edge stack supports per device configs | [optional] 
**SupportRelativePath** | **Boolean** | Whether the stack supports relative path volume | [optional] 
**UseManifestNamespaces** | **Boolean** | Uses the manifest&#39;s namespaces instead of the default one | [optional] 
**Version** | **Int32** |  | [optional] 
**Webhook** | **String** | A UUID to identify a webhook. The stack will be force updated and pull the latest image when the webhook was invoked. | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeEdgeStack = Initialize-PSOpenAPIToolsPortainereeEdgeStack  -AlwaysCloneGitRepoForRelativePath false `
 -AutoUpdate null `
 -CreatedBy admin `
 -CreatedByUserId 1 `
 -CreationDate null `
 -DeployerOptions null `
 -DeploymentType null `
 -EdgeGroups null `
 -EdgeUpdateID null `
 -EntryPoint null `
 -EnvVars null `
 -FilesystemPath /tmp `
 -GitConfig null `
 -HelmConfig null `
 -Id 1 `
 -ManifestPath null `
 -Name null `
 -NumDeployments null `
 -PerDeviceConfigsGroupMatchType null `
 -PerDeviceConfigsMatchType null `
 -PerDeviceConfigsPath configs `
 -PrePullImage null `
 -PreviousDeploymentInfo null `
 -ProjectPath null `
 -RePullImage null `
 -Registries null `
 -RetryDeploy false `
 -RetryPeriod null `
 -ScheduledTime 2020-11-13 14:53:00 `
 -StackFileVersion 1 `
 -StaggerConfig null `
 -Status null `
 -SupportPerDeviceConfigs false `
 -SupportRelativePath false `
 -UseManifestNamespaces null `
 -Version null `
 -Webhook c11fdf23-183e-428a-9bb6-16db01032174
```

- Convert the resource to JSON
```powershell
$PortainereeEdgeStack | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

