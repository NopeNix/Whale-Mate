# PortainereeCustomTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedByUserId** | **Int32** | User identifier who created this template | [optional] 
**Description** | **String** | Description of the template | [optional] 
**EdgeSettings** | [**PortainereeCustomTemplateEdgeSettings**](PortainereeCustomTemplateEdgeSettings.md) |  | [optional] 
**EdgeTemplate** | **Boolean** | EdgeTemplate indicates if this template purpose for Edge Stack | [optional] 
**EntryPoint** | **String** | Path to the Stack file | [optional] 
**GitConfig** | [**GittypesRepoConfig**](GittypesRepoConfig.md) |  | [optional] 
**Id** | **Int32** | CustomTemplate Identifier | [optional] 
**IsComposeFormat** | **Boolean** | IsComposeFormat indicates if the Kubernetes template is created from a Docker Compose file | [optional] 
**Logo** | **String** | URL of the template&#39;s logo | [optional] 
**Note** | **String** | A note that will be displayed in the UI. Supports HTML content | [optional] 
**Platform** | [**PortainerCustomTemplatePlatform**](PortainerCustomTemplatePlatform.md) | Platform associated to the template. Valid values are: 1 - &#39;linux&#39;, 2 - &#39;windows&#39; | [optional] 
**ProjectPath** | **String** | Path on disk to the repository hosting the Stack file | [optional] 
**ResourceControl** | [**PortainerResourceControl**](PortainerResourceControl.md) |  | [optional] 
**Title** | **String** | Title of the template | [optional] 
**Type** | [**PortainerStackType**](PortainerStackType.md) | Type of created stack: * 1 - swarm * 2 - compose * 3 - kubernetes | [optional] 
**Variables** | [**PortainerCustomTemplateVariableDefinition[]**](PortainerCustomTemplateVariableDefinition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainereeCustomTemplate = Initialize-PSOpenAPIToolsPortainereeCustomTemplate  -CreatedByUserId 3 `
 -Description High performance web server `
 -EdgeSettings null `
 -EdgeTemplate false `
 -EntryPoint docker-compose.yml `
 -GitConfig null `
 -Id 1 `
 -IsComposeFormat false `
 -Logo https://portainer.io/img/logo.svg `
 -Note This is my &lt;b&gt;custom&lt;/b&gt; template `
 -Platform null `
 -ProjectPath /data/custom_template/3 `
 -ResourceControl null `
 -Title Nginx `
 -Type null `
 -Variables null
```

- Convert the resource to JSON
```powershell
$PortainereeCustomTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

