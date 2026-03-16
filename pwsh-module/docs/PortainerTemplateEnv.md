# PortainerTemplateEnv
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | **String** | Default value that will be set for the variable | [optional] 
**Description** | **String** | Content of the tooltip that will be generated in the UI | [optional] 
**Label** | **String** | Text for the label that will be generated in the UI | [optional] 
**Name** | **String** | name of the environment(endpoint) variable | [optional] 
**Preset** | **Boolean** | If set to true, will not generate any input for this variable in the UI | [optional] 
**Select** | [**PortainerTemplateEnvSelect[]**](PortainerTemplateEnvSelect.md) | A list of name/value that will be used to generate a dropdown in the UI | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerTemplateEnv = Initialize-PSOpenAPIToolsPortainerTemplateEnv  -Default default_value `
 -Description MySQL root account password `
 -Label Root password `
 -Name MYSQL_ROOT_PASSWORD `
 -Preset false `
 -Select null
```

- Convert the resource to JSON
```powershell
$PortainerTemplateEnv | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

