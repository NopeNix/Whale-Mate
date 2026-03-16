# PortainerCustomTemplateVariableDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultValue** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Label** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PortainerCustomTemplateVariableDefinition = Initialize-PSOpenAPIToolsPortainerCustomTemplateVariableDefinition  -DefaultValue default value `
 -Description Description `
 -Label My Variable `
 -Name MY_VAR
```

- Convert the resource to JSON
```powershell
$PortainerCustomTemplateVariableDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

