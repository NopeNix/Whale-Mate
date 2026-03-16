# EdgeStackPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlwaysCloneGitRepoForRelativePath** | **Boolean** | AlwaysCloneGitRepoForRelativePath is a flag indicating if the agent must always clone the git repository for relative path. This field is only valid when SupportRelativePath is true. Used only for EE | [optional] 
**CreatedBy** | **String** | CreatedBy is the username that created this stack Used for adding labels to Kubernetes manifests | [optional] 
**CreatedByUserId** | **String** | CreatedByUserId is the user ID that created this stack Used for adding labels to Kubernetes manifests | [optional] 
**DeployerOptionsPayload** | [**EdgeDeployerOptionsPayload**](EdgeDeployerOptionsPayload.md) |  | [optional] 
**DirEntries** | [**FilesystemDirEntry[]**](FilesystemDirEntry.md) | Content of stack folder | [optional] 
**EdgeUpdateID** | **Int32** | EdgeUpdateID is the ID of the edge update related to this stack. Used only for EE | [optional] 
**EntryFileName** | **String** | Name of the stack entry file | [optional] 
**EnvVars** | [**PortainerPair[]**](PortainerPair.md) | Used only for EE EnvVars is a list of environment variables to inject into the stack | [optional] 
**FilesystemPath** | **String** | Mount point for relative path | [optional] 
**ForceUpdate** | **Boolean** | ForceUpdate is a flag indicating if the agent must force the update of the stack. Used only for EE | [optional] 
**HelmConfig** | [**PortainerHelmConfig**](PortainerHelmConfig.md) | HelmConfig represents the Helm configuration for an edge stack | [optional] 
**ID** | **Int32** | ID of the stack | [optional] 
**Name** | **String** | Name of the stack | [optional] 
**Namespace** | **String** | Namespace to use for kubernetes stack. Keep empty to use the manifest namespace. | [optional] 
**PrePullImage** | **Boolean** | PrePullImage is a flag indicating if the agent must pull the image before deploying the stack. Used only for EE | [optional] 
**RePullImage** | **Boolean** | RePullImage is a flag indicating if the agent must pull the image if it is already present on the node. Used only for EE | [optional] 
**ReadyRePullImage** | **Boolean** | Used only for EE async edge agent ReadyRePullImage is a flag to indicate whether the auto update is trigger to re-pull image Deprecated(2.36): use DeployerOptionsPayload.ForceRecreate instead | [optional] 
**RegistryCredentials** | [**EdgeRegistryCredentials[]**](EdgeRegistryCredentials.md) | RegistryCredentials holds the credentials for a Docker registry. Used only for EE | [optional] 
**RetryDeploy** | **Boolean** | RetryDeploy is a flag indicating if the agent must retry to deploy the stack if it fails. Used only for EE | [optional] 
**RetryPeriod** | **Int32** | RetryPeriod specifies the duration, in seconds, for which the agent should continue attempting to deploy the stack after a failure Used only for EE | [optional] 
**RollbackTo** | **Int32** | RollbackTo specifies the stack file version to rollback to (only support to rollback to the last version currently) | [optional] 
**StackFileContent** | **String** | Content of the stack file (for compatibility to agent version less than 2.19.0) | [optional] 
**SupportRelativePath** | **Boolean** | Is relative path supported | [optional] 
**Version** | **Int32** | Version of the stack file | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgeStackPayload = Initialize-PSOpenAPIToolsEdgeStackPayload  -AlwaysCloneGitRepoForRelativePath null `
 -CreatedBy null `
 -CreatedByUserId null `
 -DeployerOptionsPayload null `
 -DirEntries null `
 -EdgeUpdateID null `
 -EntryFileName null `
 -EnvVars null `
 -FilesystemPath null `
 -ForceUpdate null `
 -HelmConfig null `
 -ID null `
 -Name null `
 -Namespace null `
 -PrePullImage null `
 -RePullImage null `
 -ReadyRePullImage null `
 -RegistryCredentials null `
 -RetryDeploy null `
 -RetryPeriod null `
 -RollbackTo null `
 -StackFileContent null `
 -SupportRelativePath null `
 -Version null
```

- Convert the resource to JSON
```powershell
$EdgeStackPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

