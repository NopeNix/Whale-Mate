# PortainereeCustomTemplateEdgeSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PrePullImage** | **Boolean** | Pre Pull Image | [optional] 
**PrivateRegistryId** | **Int32** |  | [optional] 
**RelativePathSettings** | [**PortainereeCustomTemplateRelativePathSettings**](PortainereeCustomTemplateRelativePathSettings.md) |  | [optional] 
**RetryDeploy** | **Boolean** | Retry deploy | [optional] 
**RetryPeriod** | **Int32** |  | [optional] 
**StaggerConfig** | [**PortainereeEdgeStaggerConfig**](PortainereeEdgeStaggerConfig.md) | StaggerConfig is the configuration for staggered update | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeCustomTemplateEdgeSettings = Initialize-PSOpenAPIToolsPortainereeCustomTemplateEdgeSettings  -PrePullImage null `
 -PrivateRegistryId null `
 -RelativePathSettings null `
 -RetryDeploy false `
 -RetryPeriod null `
 -StaggerConfig null
```

- Convert the resource to JSON
```powershell
$PortainereeCustomTemplateEdgeSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

