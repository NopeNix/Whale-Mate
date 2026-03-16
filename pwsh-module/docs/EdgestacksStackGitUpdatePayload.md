# EdgestacksStackGitUpdatePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Atomic** | **Boolean** | Enable automatic rollback on deployment failure (equivalent to helm --atomic flag) | [optional] 
**Authentication** | [**GittypesGitAuthentication**](GittypesGitAuthentication.md) |  | [optional] 
**AutoUpdate** | [**PortainerAutoUpdateSettings**](PortainerAutoUpdateSettings.md) |  | [optional] 
**DeployerOptions** | [**EdgestacksDeployerOptionsPayload**](EdgestacksDeployerOptionsPayload.md) | Options to control the deployer behaviour | [optional] 
**DeploymentType** | [**PortainerEdgeStackDeploymentType**](PortainerEdgeStackDeploymentType.md) |  | [optional] 
**EnvVars** | [**PortainerPair[]**](PortainerPair.md) |  | [optional] 
**GroupIds** | **Int32[]** |  | [optional] 
**PrePullImage** | **Boolean** |  | [optional] 
**RePullImage** | **Boolean** | Deprecated(2.36): to be removed in future versions (2.44+) Use RepullImageAndRedeploy instead | [optional] 
**RefName** | **String** |  | [optional] 
**Registries** | **Int32[]** | List of Registries to use for this stack | [optional] 
**RepullImageAndRedeploy** | **Boolean** | RepullImageAndRedeploy indicates whether the edge stack is manually forced to redeploy | [optional] 
**RetryDeploy** | **Boolean** |  | [optional] 
**RetryPeriod** | **Int32** | RetryPeriod specifies the duration, in seconds, for which the agent should continue attempting to deploy the stack after a failure | [optional] 
**StaggerConfig** | [**PortainereeEdgeStaggerConfig**](PortainereeEdgeStaggerConfig.md) | Configuration for stagger updates | [optional] 
**Timeout** | **String** | Timeout for Helm operations (equivalent to helm --timeout flag) | [optional] 
**UpdateVersion** | **Boolean** | Update the stack file content from the git repository If this is set to true, it indicates that the stack is being redeployed (Pull and update stack), if it is false, it indicates that the stack is being updated (Update settings) | [optional] 
**ValuesFiles** | **String[]** | Array of paths to Helm values YAML files for Helm git deployments | [optional] 

## Examples

- Prepare the resource
```powershell
$EdgestacksStackGitUpdatePayload = Initialize-PSOpenAPIToolsEdgestacksStackGitUpdatePayload  -Atomic true `
 -Authentication null `
 -AutoUpdate null `
 -DeployerOptions null `
 -DeploymentType null `
 -EnvVars null `
 -GroupIds null `
 -PrePullImage null `
 -RePullImage null `
 -RefName null `
 -Registries null `
 -RepullImageAndRedeploy null `
 -RetryDeploy null `
 -RetryPeriod null `
 -StaggerConfig null `
 -Timeout 5m0s `
 -UpdateVersion null `
 -ValuesFiles [[&#39;values/prod.yaml&#39;,  &#39;values/secrets.yaml&#39;]]
```

- Convert the resource to JSON
```powershell
$EdgestacksStackGitUpdatePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

