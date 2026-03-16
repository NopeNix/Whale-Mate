# PortainerTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdministratorOnly** | **Boolean** | Whether the template should be available to administrators only | [optional] 
**Categories** | **String[]** | A list of categories associated to the template | [optional] 
**Command** | **String** | The command that will be executed in a container template | [optional] 
**Description** | **String** | Description of the template | [optional] 
**Env** | [**PortainerTemplateEnv[]**](PortainerTemplateEnv.md) | A list of environment(endpoint) variables used during the template deployment | [optional] 
**Hostname** | **String** | Container hostname | [optional] 
**Id** | **Int32** | Mandatory container/stack fields Template Identifier | [optional] 
**Image** | **String** | Mandatory container fields Image associated to a container template. Mandatory for a container template | [optional] 
**Interactive** | **Boolean** | Whether the container should be started in interactive mode (-i -t equivalent on the CLI) | [optional] 
**Labels** | [**PortainerPair[]**](PortainerPair.md) | Container labels | [optional] 
**Logo** | **String** | URL of the template&#39;s logo | [optional] 
**Name** | **String** | Optional stack/container fields Default name for the stack/container to be used on deployment | [optional] 
**Network** | **String** | Name of a network that will be used on container deployment if it exists inside the environment(endpoint) | [optional] 
**Note** | **String** | A note that will be displayed in the UI. Supports HTML content | [optional] 
**Platform** | **String** | Platform associated to the template. Valid values are: &#39;linux&#39;, &#39;windows&#39; or leave empty for multi-platform | [optional] 
**Ports** | **String[]** | A list of ports exposed by the container | [optional] 
**Privileged** | **Boolean** | Whether the container should be started in privileged mode | [optional] 
**Registry** | **String** | Optional container fields The URL of a registry associated to the image for a container template | [optional] 
**Repository** | [**PortainerTemplateRepository**](PortainerTemplateRepository.md) | Mandatory stack fields | [optional] 
**RestartPolicy** | **String** | Container restart policy | [optional] 
**StackFile** | **String** | Mandatory Edge stack fields Stack file used for this template | [optional] 
**Title** | **String** | Title of the template | [optional] 
**Type** | [**PortainerTemplateType**](PortainerTemplateType.md) | Template type. Valid values are: 1 (container), 2 (Swarm stack), 3 (Compose stack), 4 (Compose edge stack) | [optional] 
**Volumes** | [**PortainerTemplateVolume[]**](PortainerTemplateVolume.md) | A list of volumes used during the container template deployment | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTemplate = Initialize-PSOpenAPIToolsPortainerTemplate  -AdministratorOnly true `
 -Categories [database] `
 -Command ls -lah `
 -Description High performance web server `
 -Env null `
 -Hostname mycontainer `
 -Id 1 `
 -Image nginx:latest `
 -Interactive true `
 -Labels null `
 -Logo https://portainer.io/img/logo.svg `
 -Name mystackname `
 -Network mynet `
 -Note This is my &lt;b&gt;custom&lt;/b&gt; template `
 -Platform linux `
 -Ports [8080:80/tcp] `
 -Privileged true `
 -Registry quay.io `
 -Repository null `
 -RestartPolicy on-failure `
 -StackFile null `
 -Title Nginx `
 -Type null `
 -Volumes null
```

- Convert the resource to JSON
```powershell
$PortainerTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

