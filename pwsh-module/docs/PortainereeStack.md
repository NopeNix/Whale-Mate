# PortainereeStack
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdditionalFiles** | **String[]** | Only applies when deploying stack with multiple files | [optional] 
**AutoUpdate** | [**PortainerAutoUpdateSettings**](PortainerAutoUpdateSettings.md) | The GitOps update settings of a git stack | [optional] 
**CreatedBy** | **String** | The username which created this stack | [optional] 
**CreatedByUserId** | **String** | The username id which created this stack | [optional] 
**CreationDate** | **Int32** | The date in unix time when stack was created | [optional] 
**EndpointId** | **Int32** | Environment(Endpoint) identifier. Reference the environment(endpoint) that will be used for deployment | [optional] 
**EntryPoint** | **String** | Path to the Stack file | [optional] 
**Env** | [**PortainerPair[]**](PortainerPair.md) | A list of environment(endpoint) variables used during stack deployment | [optional] 
**FilesystemPath** | **String** | Network(Swarm) or local(Standalone) filesystem path | [optional] 
**FromAppTemplate** | **Boolean** | Whether the stack is from a app template | [optional] 
**GitConfig** | [**GittypesRepoConfig**](GittypesRepoConfig.md) | The git config of this stack | [optional] 
**HelmChartPath** | **String** | Path to a Helm chart folder for Helm git deployments | [optional] 
**HelmValuesFiles** | **String[]** | Array of paths to Helm values YAML files for Helm git deployments | [optional] 
**Id** | **Int32** | Stack Identifier | [optional] 
**IsDetachedFromGit** | **Boolean** | Whether the stack is detached from git | [optional] 
**Name** | **String** | Stack name | [optional] 
**Namespace** | **String** | Kubernetes namespace if stack is a kube application | [optional] 
**Option** | [**PortainerStackOption**](PortainerStackOption.md) | The stack deployment option | [optional] 
**PreviousDeploymentInfo** | [**PortainerStackDeploymentInfo**](PortainerStackDeploymentInfo.md) | The previous deployment info of the stack | [optional] 
**ProjectPath** | **String** | Path on disk to the repository hosting the Stack file | [optional] 
**Registries** | **Int32[]** | List of Registries to use for this stack | [optional] 
**ResourceControl** | [**PortainerResourceControl**](PortainerResourceControl.md) |  | [optional] 
**StackFileVersion** | **Int32** | StackFileVersion indicates the stack file version, such as yaml, hcl, and manifest | [optional] 
**Status** | [**PortainerStackStatus**](PortainerStackStatus.md) | Stack status (1 - active, 2 - inactive) | [optional] 
**SupportRelativePath** | **Boolean** | If stack support relative path volume | [optional] 
**SwarmId** | **String** | Cluster identifier of the Swarm cluster where the stack is deployed | [optional] 
**Type** | [**PortainerStackType**](PortainerStackType.md) | Stack type. 1 for a Swarm stack, 2 for a Compose stack | [optional] 
**UpdateDate** | **Int32** | The date in unix time when stack was last updated | [optional] 
**UpdatedBy** | **String** | The username which last updated this stack | [optional] 
**Webhook** | **String** | A UUID to identify a webhook. The stack will be force updated and pull the latest image when the webhook was invoked. | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeStack = Initialize-PSOpenAPIToolsPortainereeStack  -AdditionalFiles null `
 -AutoUpdate null `
 -CreatedBy admin `
 -CreatedByUserId 1 `
 -CreationDate 1587399600 `
 -EndpointId 1 `
 -EntryPoint docker-compose.yml `
 -Env null `
 -FilesystemPath /tmp `
 -FromAppTemplate false `
 -GitConfig null `
 -HelmChartPath charts/my-app `
 -HelmValuesFiles [[&#39;values/prod.yaml&#39;,  &#39;values/secrets.yaml&#39;]] `
 -Id 1 `
 -IsDetachedFromGit false `
 -Name myStack `
 -Namespace default `
 -Option null `
 -PreviousDeploymentInfo null `
 -ProjectPath /data/compose/myStack_jpofkc0i9uo9wtx1zesuk649w `
 -Registries null `
 -ResourceControl null `
 -StackFileVersion 1 `
 -Status null `
 -SupportRelativePath false `
 -SwarmId jpofkc0i9uo9wtx1zesuk649w `
 -Type null `
 -UpdateDate 1587399600 `
 -UpdatedBy bob `
 -Webhook c11fdf23-183e-428a-9bb6-16db01032174
```

- Convert the resource to JSON
```powershell
$PortainereeStack | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

