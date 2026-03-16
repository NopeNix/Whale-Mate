# CustomtemplatesCustomTemplateFromFileContentPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description of the template | 
**EdgeSettings** | [**PortainereeCustomTemplateEdgeSettings**](PortainereeCustomTemplateEdgeSettings.md) |  | [optional] 
**EdgeTemplate** | **Boolean** | EdgeTemplate indicates if this template purpose for Edge Stack | [optional] 
**FileContent** | **String** | Content of stack file | 
**Logo** | **String** | URL of the template&#39;s logo | [optional] 
**Note** | **String** | A note that will be displayed in the UI. Supports HTML content | [optional] 
**Platform** | [**PortainerCustomTemplatePlatform**](PortainerCustomTemplatePlatform.md) | Platform associated to the template. Valid values are: 1 - &#39;linux&#39;, 2 - &#39;windows&#39; Required for Docker stacks | [optional] 
**Title** | **String** | Title of the template | 
**Type** | [**PortainerStackType**](PortainerStackType.md) | Type of created stack: * 1 - swarm * 2 - compose * 3 - kubernetes | 
**Variables** | [**PortainerCustomTemplateVariableDefinition[]**](PortainerCustomTemplateVariableDefinition.md) | Definitions of variables in the stack file | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomtemplatesCustomTemplateFromFileContentPayload = Initialize-PSOpenAPIToolsCustomtemplatesCustomTemplateFromFileContentPayload  -Description High performance web server `
 -EdgeSettings null `
 -EdgeTemplate false `
 -FileContent null `
 -Logo https://portainer.io/img/logo.svg `
 -Note This is my &lt;b&gt;custom&lt;/b&gt; template `
 -Platform null `
 -Title Nginx `
 -Type null `
 -Variables null
```

- Convert the resource to JSON
```powershell
$CustomtemplatesCustomTemplateFromFileContentPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

